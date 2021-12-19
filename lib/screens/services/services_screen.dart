import 'package:first_web/constants.dart';
import 'package:first_web/screens/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      SingleChildScrollView(
        child: Container(
          color: Colors.white60,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          "Devops",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 49, 79, 1),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.5),
                          child: const Text(
                            "Achieve a greater business agility and a faster time to market by eliminating bottlenecks in software development by leveraging our DevOps services. Continuous Delivery makes staying ahead of the competitors and impressing your customers with products they really want.",
                            style: TextStyle(
                              color: Color.fromRGBO(31, 49, 79, 1),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.50),
                    child: Image.asset(
                      'devops-concept.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.50),
                    child: Image.asset(
                      'kubernetes-service.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Professional Kubernetes",
                        style: TextStyle(
                            color: Color.fromRGBO(31, 49, 79, 1),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        constraints: BoxConstraints(
                            maxWidth:
                            MediaQuery.of(context).size.width * 0.5),
                        child: const Text(
                          "Our Kubernetes Consulting Services help you to innovate at scale & seamlessly orchestrate containerized workloads for your applications with DevOps practices & CI/CD pipelines, delivering enhanced developer productivity and accelerating time to market.",
                          style: TextStyle(
                            color: Color.fromRGBO(31, 49, 79, 1),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          "Cloudops",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 49, 79, 1),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          constraints: BoxConstraints(
                              maxWidth:
                              MediaQuery.of(context).size.width * 0.5),
                          child: const Text(
                            "We work towards keeping the desired state of your Cloud workload through a proactive approach with securing and maintaining workloads in the Cloud. Our engineers ensure that everything will continue working as planned and function effectively in the Cloud.",
                            style: TextStyle(
                              color: Color.fromRGBO(31, 49, 79, 1),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.50),
                    child: Image.asset(
                      'img.png',
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.50),
                    child: Image.asset(
                      'cloud-migration.jpeg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Cloud Migration",
                        style: TextStyle(
                            color: Color.fromRGBO(31, 49, 79, 1),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        constraints: BoxConstraints(
                            maxWidth:
                            MediaQuery.of(context).size.width * 0.5),
                        child: const Text(
                          "Modern Infrastructure with SRE, release engineering and continuous delivery enables enterprises with high availability and reliability of applications.6R’s application migration Strategy for re-platforming ,re-architecting ,re-hosting with re-factoring and re-purchasing and re-retaining for adopting Cloud workloads.",
                          style: TextStyle(
                            color: Color.fromRGBO(31, 49, 79, 1),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
