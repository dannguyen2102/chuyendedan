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
        <div class="logo flex-shrink-0 w-2/12 grid place-items-center">🔥🔥</div>
        <div class="noti whitespace-nowrap overflow-clip text-white/50">
            <p class="text">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus, vel non aliquam ipsa
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
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                    
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                    <img src="../total_image/image/nhunglau/dau-hu-chien.jpg" alt="">
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
                <li>
                    <button class="w-full py-3 text-center text-white focus:bg-red-500">
                        Lau
                    </button>
                </li>
            </ul>
        </div>
        <div class="content relative bg-stone-800 w-10/12 h-screen overflow-auto flex flex-row flex-wrap">
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full">
                    <img src="../total_image/image/nhunglau/rau-cai.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex pb-1 bg-white">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <section class="w-1/2 h-1/3 flex bg-gray-200 pb-1">
                <div class="wrapper w-4/6 h-full bg-blue-500">
                    <img src="art.jpg" class="w-full h-full object-cover" alt="" />
                </div>
                <div class="flex flex-col h-full p-2 w-2/6 justify-between bg-white">
                    <div>
                        <div class="name text-xl font-bold">Hadilao</div>
                        <div class="price text-sm">&#8363;300000</div>
                    </div>
                    <p
                        class="w-8 h-8 bg-red-500 text-center leading-7 rounded-full text-3xl text-white self-end cursor-pointer">
                        +
                    </p>
                </div>
            </section>
            <div
                class="total fixed bottom-0 right-0 flex items-center justify-between px-4 w-5/12 h-12 text-white bg-red-500">
                <div class="monney font-bold">🛒&#8363; 1,310,000</div>
                <div class="text-xs">Vui long chon mon an</div>
            </div>
        </div>
    </main>
</body>

</html>
