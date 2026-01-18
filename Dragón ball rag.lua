<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Buscador de Esferas del Dragón 🔥🐉</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&display=swap');
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Orbitron', monospace;
            background: linear-gradient(45deg, #0f0f23, #1a0033, #330066, #0f0f23);
            background-size: 400% 400%;
            animation: gradientShift 10s ease infinite;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            color: #fff;
        }
        
        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        
        h1 {
            font-size: 2.5rem;
            margin-bottom: 2rem;
            text-shadow: 0 0 20px #ff6b35;
            animation: glow 2s ease-in-out infinite alternate;
        }
        
        @keyframes glow {
            from { text-shadow: 0 0 20px #ff6b35; }
            to { text-shadow: 0 0 30px #ff6b35, 0 0 40px #ff6b35; }
        }
        
        #btnBuscar {
            font-family: 'Orbitron', monospace;
            font-size: 1.5rem;
            font-weight: 900;
            padding: 1.5rem 3rem;
            border: none;
            border-radius: 50px;
            background: linear-gradient(45deg, #ff6b35, #f7931e, #ff6b35);
            color: #fff;
            cursor: pointer;
            box-shadow: 0 10px 30px rgba(255, 107, 53, 0.5);
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        
        #btnBuscar:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 40px rgba(255, 107, 53, 0.8);
        }
        
        #btnBuscar:active {
            transform: scale(0.98);
        }
        
        #btnBuscar:disabled {
            opacity: 0.6;
            cursor: not-allowed;
            transform: none;
        }
        
        #contenedorEsferas {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            margin-top: 3rem;
            opacity: 0;
            transform: scale(0);
            transition: all 1s ease;
        }
        
        .esfera {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            position: relative;
            animation: float 3s ease-in-out infinite;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 0 30px rgba(255, 255, 255, 0.5);
        }
        
        .esfera:hover {
            transform: scale(1.1);
            box-shadow: 0 0 50px rgba(255, 255, 255, 0.8);
        }
        
        /* Colores de las Esferas del Dragón */
        .esfera1 { background: radial-gradient(circle, #ff9500, #e67e22); }
        .esfera2 { background: radial-gradient(circle, #00ff88, #00cc66); }
        .esfera3 { background: radial-gradient(circle, #00d4ff, #00a8cc); }
        .esfera4 { background: radial-gradient(circle, #4a00e0, #3a0088); }
        .esfera5 { background: radial-gradient(circle, #8b00ff, #6600cc); }
        .esfera6 { background: radial-gradient(circle, #ff0040, #cc0033); }
        .esfera7 { background: radial-gradient(circle, #ff3300, #e60000); }
        
        /* Estrella roja en el centro */
        .estrella {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 40px;
            height: 40px;
            background: #ff0000;
            clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);
            animation: twinkle 1s ease-in-out infinite alternate;
        }
        
        @keyframes twinkle {
            from { opacity: 0.8; transform: translate(-50%, -50%) scale(1); }
            to { opacity: 1; transform: translate(-50%, -50%) scale(1.1); }
        }
        
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }
        
        @keyframes aparecer {
            0% { opacity: 0; transform: scale(0) rotate(360deg); }
            100% { opacity: 1; transform: scale(1) rotate(0deg); }
        }
        
        .esfera.mostrada {
            animation: aparecer 0.8s ease forwards, float 3s ease-in-out infinite 0.8s;
        }
        
        #mensaje {
            font-size: 1.2rem;
            margin-top: 1rem;
            opacity: 0;
            transition: opacity 0.5s ease;
        }
        
        #mensaje.visible {
            opacity: 1;
        }
        
        .buscando {
            display: none;
            font-size: 1.2rem;
            color: #ff6b35;
            animation: pulse 1s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.5; }
        }
        
        /* Partículas de fondo */
        .particula {
            position: absolute;
            width: 4px;
            height: 4px;
            background: #ff6b35;
            border-radius: 50%;
            animation: particulaAnim 5s linear infinite;
        }
        
        @keyframes particulaAnim {
            0% { transform: translateY(100vh) scale(0); opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { transform: translateY(-100px) scale(1); opacity: 0; }
        }
    </style>
</head>
<body>
    <h1>🌟 ESFERAS DEL DRAGÓN 🌟</h1>
    <button id="btnBuscar">🚀 AUTO BUSCAR LAS ESFERAS DEL DRAGÓN 🚀</button>
    <div id="buscando" class="buscando">🔍 Buscando esferas... ¡Shenron está cerca! ⏳</div>
    <div id="contenedorEsferas"></div>
    <div id="mensaje"></div>

    <script>
        const btnBuscar = document.getElementById('btnBuscar');
        const buscando = document.getElementById('buscando');
        const contenedorEsferas = document.getElementById('contenedorEsferas');
        const mensaje = document.getElementById('mensaje');
        
        const esferasData = [
            { clase: 'esfera1', num: 1 },
            { clase: 'esfera2', num: 2 },
            { clase: 'esfera3', num: 3 },
            { clase: 'esfera4', num: 4 },
            { clase: 'esfera5', num: 5 },
            { clase: 'esfera6', num: 6 },
            { clase: 'esfera7', num: 7 }
        ];
        
        let autoMode = false;
        let intervaloAuto;
        
        btnBuscar.addEventListener('click', () => {
            if (autoMode) {
                detenerAuto();
            } else {
                iniciarAuto();
            }
        });
        
        function iniciarAuto() {
            autoMode = true;
            btnBuscar.textContent = '🛑 DETENER AUTO BUSCAR 🛑';
            btnBuscar.style.background = 'linear-gradient(45deg, #ff0040, #cc0033, #ff0040)';
            
            buscarEsferas();
            
            intervaloAuto = setInterval(() => {
                limpiarEsferas();
                buscarEsferas();
            }, 5000); // Auto busca cada 5 segundos
        }
        
        function detenerAuto() {
            autoMode = false;
            clearInterval(intervaloAuto);
            btnBuscar.textContent = '🚀 AUTO BUSCAR LAS ESFERAS DEL DRAGÓN 🚀';
            btnBuscar.style.background = 'linear-gradient(45deg, #ff6b35, #f7931e, #ff6b35)';
            limpiarTodo();
        }
        
        function buscarEsferas() {
            btnBuscar.disabled = true;
            buscando.style.display = 'block';
            contenedorEsferas.style.opacity = '0';
            mensaje.classList.remove('visible');
            
            setTimeout(() => {
                contenedorEsferas.innerHTML = '';
                esferasData.forEach((esfera, index) => {
                    setTimeout(() => {
                        crearEsfera(esfera);
                        if (index === esferasData.length - 1) {
                            finalizarBusqueda();
                        }
                    }, index * 300);
                });
            }, 1500);
        }
        
        function crearEsfera(data) {
            const esfera = document.createElement('div');
            esfera.className = `esfera ${data.clase} mostrada`;
            esfera.title = `Esfera ${data.num} Estrellas`;
            
            const estrella = document.createElement('div');
            estrella.className = 'estrella';
            estrella.textContent = data.num; // Número de estrellas como texto (simulado)
            
            esfera.appendChild(estrella);
            contenedorEsferas.appendChild(esfera);
            
            // Click en esfera para efecto
            esfera.addEventListener('click', () => {
                esfera.style.transform = 'scale(1.5)';
                setTimeout(() => {
                    esfera.style.transform = '';
                }, 200);
            });
        }
        
        function finalizarBusqueda() {
            btnBuscar.disabled = false;
            buscando.style.display = 'none';
            contenedorEsferas.style.opacity = '1';
            contenedorEsferas.style.transform = 'scale(1)';
            mensaje.textContent = '¡TODAS LAS 7 ESFERAS ENCONTRADAS! 🐉 ¡Invoca a Shenron! ✨';
            mensaje.classList.add('visible');
        }
        
        function limpiarEsferas() {
            contenedorEsferas.innerHTML = '';
        }
        
        function limpiarTodo() {
            limpiarEsferas();
            buscando.style.display = 'none';
            mensaje.classList.remove('visible');
            contenedorEsferas.style.opacity = '0';
            contenedorEsferas.style.transform = 'scale(0)';
        }
        
        // Partículas de fondo automáticas
        function crearParticulas() {
            for (let i = 0; i < 20; i++) {
                setTimeout(() => {
                    const particula = document.createElement('div');
                    particula.className = 'particula';
                    particula.style.left = Math.random() * 100 + '%';
                    particula.style.animationDelay = Math.random() * 5 + 's';
                    particula.style.animationDuration = (Math.random() * 3 + 2) + 's';
                    document.body.appendChild(particula);
                    
                    setTimeout(() => {
                        particula.remove();
                    }, 7000);
                }, i * 200);
            }
        }
        
        setInterval(crearParticulas, 3000);
        crearParticulas(); // Inicial
    </script>
</body>
</html>
