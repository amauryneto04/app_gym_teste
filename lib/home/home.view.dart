import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Academia Fit')),
        leading: const Icon(Icons.fitness_center),
        actions: [
          IconButton(
            onPressed: () {
              Get.back(); // voltar para a tela anterior
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: _body(), // Chama o método _body que retorna o conteúdo da tela
      bottomNavigationBar: _bottamNavigationBar(), //Barra de navegação inferior
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _welcomeText(),
          const SizedBox(height: 20),
          _imageBanner(),
          const SizedBox(height: 20),
          _quickActions(),
          const SizedBox(height: 20),
          _workoutPrograms(),
          const SizedBox(height: 20),
          _nutritionTips(),
        ],
      ),
    );
  }

  Widget _welcomeText() {
    return Center(
      child: const Text(
        'Bem-vindo à Academia Fit',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _imageBanner() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
              'https://th.bing.com/th/id/OIP.vhPC3uqXpEzBvbi6IAZReQHaEV?rs=1&pid=ImgDetMain.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _quickActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _actionButton(Icons.schedule, 'Agenda'),
        _actionButton(Icons.fitness_center, 'Treinos'),
        _actionButton(Icons.restaurant, 'Nutrição'),
        _actionButton(Icons.people, 'Comunidade')
      ],
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(icon, size: 30),
        ),
        const SizedBox(height: 30),
        Text(label),
      ],
    );
  }

  Widget _workoutPrograms() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Programas de Treino',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _workoutCard('Treino de Força', 'Aumenta sua força e massa muscular'),
        _workoutCard(
            'Treino Cardio', 'Melhore sua resistência e queime calorias'),
      ],
    );
  }

  Widget _workoutCard(String tilte, String descriptiion) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.fitness_center),
        title: Text(tilte),
        subtitle: Text(descriptiion),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Navegar para detalhes do treino
        },
      ),
    );
  }

  Widget _nutritionTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dicas de Nutrição',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _nutritionCard(
            'Diente Balanceada', 'Como manter uma alimentação saudável'),
        _nutritionCard('Suplementos', 'Guia para o uso de suplementos'),
      ],
    );
  }

  Widget _nutritionCard(String tilte, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.restaurant),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          //Navegar para delhates da fica
        },
      ),
    );
  }

  Widget _bottamNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Agenda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      onTap: (int index) {
        //Mudar para a página correspondente
      },
    );
  }
}
