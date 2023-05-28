<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Document</title>
    <style>
        ::-webkit-scrollbar {
            width: 0;
        }

        .text {
            transform: translateX(100%);
            /* animation: roll 5s linear 0 infinite alternate; */
            animation-name: roll;
            animation-duration: 10s;
            animation-timing-function: linear;
            animation-delay: 0;
            animation-iteration-count: infinite;
            animation-direction: forwards;
        }

        @keyframes roll {
            to {
                transform: translateX(-200%);
            }
        }
    </style>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    animation: {
                        roll: "spin 3s linear infinite",
                    },
                },
            },
        };
    </script>
</head>

<body>
    <header class="flex bg-stone-900 text-white justify-between items-center w-screen h-12">
        <div class="logo flex-shrink-0 w-2/12 grid place-items-center">
            <h4 class="text-xl">Dan's Restaurant🔥🔥</h4>
        </div>
        <div class="noti whitespace-nowrap overflow-clip text-white/50">
            <p class="text">
                Tinh hoa ẩm thực - con người Việt Nam
            </p>
        </div>
        <div class="register flex w-5/12 h-full justify-around text-center">
            <div class="avatar flex-grow self-center">🤓</div>
            <div class="login cursor-pointer flex-grow self-center mr-[93px]">
                <form action="{{ route('frontend_signup') }}" method="POST">
                    @csrf
                    <button>Join</button>
                </form>
            </div>
        </div>
    </header>
    <main class="w-full h-full flex overflow-clip">
        <div class="sidebar bg-stone-900 w-2/12 h-screen flex items-center">
            <ul class="w-full list-none cursor-pointer">
                @foreach ($types as $t)
                    <li>
                        <button class="w-full py-3 text-center text-white focus:bg-red-500">
                            {{ $t->type_name }}
                        </button>
                    </li>
                @endforeach
            </ul>
        </div>
        <div class="content relative bg-stone-800 w-10/12 h-screen overflow-auto flex flex-row flex-wrap">
            @foreach ($foods as $food)
                <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                    <div class="wrapper w-4/6 h-full">
                        <img src="{{ $food->image }}" class="w-full h-full object-cover" alt="" />
                    </div>
                    <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                        <div>
                            <div class="name text-xl font-bold">{{ $food->food_name }}</div>
                            <div class="price text-sm">&#8363;{{ $food->food_money }}</div>
                        </div>
                        <form action="{{ route('addtocart') }}" method="POST">
                            @csrf
                            <input type="hidden" value="{{ $food->food_id }}" name="food_id">
                            <input type="hidden" value="{{ $food->image }}" name="image">
                            <input type="hidden" value="{{ $food->food_name }}" name="food_name">
                            <input type="hidden" value="{{ $food->food_money }}" name="food_money">
                            <button type="submit"
                                class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer
                            relative top-0 left-0 items-center justify-center">
                                +
                            </button>
                        </form>
                    </div>
                </section>
            @endforeach
            <div
                class="total fixed bottom-0 right-0 flex items-center justify-between px-4 w-5/12 h-12 text-white bg-green-400">
                <div class="monney font-bold">🛒&#8363; {{ $total_price }}</div>
                <div class="text-xs">Vui long chon mon an</div>
            </div>
        </div>
    </main>
</body>

</html>
