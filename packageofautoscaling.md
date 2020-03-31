# openstack_note
OpenStack auto scaling套件的功能


Mistral Workflow Service
Mistral is a workflow service. Lots of computations in computer systems nowadays can be represented as processes that consist of multiple interconnected steps that need to run in a particular order. Those steps are often interactions with components distributed across different machines: real hardware machines, cloud virtual machines or containers. Mistral provides capabilities to automate such processes.

Particularly, Mistral can be used, for example, for solving administrator tasks related to managing clusters of software, or for any other tasks that span multiple components and take long to complete. It can also be used as a central component for deploying distributed software in a truly large scale. In any case where the ability to track the progress of the activity becomes crucial, Mistral is a good fit.

A Mistral user can describe such a process as a set of tasks and transitions between them, and upload such a definition to Mistral, which will take care of state management, correct execution order, parallelism, synchronization and high availability. In Mistral terminology such a set of tasks and relations between them is called a workflow.


Barbican Key Manager service
提供儲存的方式來管理較於隱私的KEY，像是對稱金鑰、不對稱金鑰... ...等等的


Aodh
The Alarming service (aodh) project provides a service that enables the ability to trigger actions based on defined rules against metric or event data collected by Ceilometer or Gnocchi


Ceilometer
The Ceilometer project is a data collection service that provides the ability to normalise and transform data across all current OpenStack core components with work underway to support future OpenStack components.

Ceilometer is a component of the Telemetry project. Its data can be used to provide customer billing, resource tracking, and alarming capabilities across all OpenStack core components.


Heat Orchestration Service
Heat is the main project in the OpenStack Orchestration program. It implements an orchestration engine to launch multiple composite cloud applications based on templates in the form of text files that can be treated like code. A native Heat template format is evolving, but Heat also endeavours to provide compatibility with the AWS CloudFormation template format, so that many existing CloudFormation templates can be launched on OpenStack. Heat provides both an OpenStack-native ReST API and a CloudFormation-compatible Query API.
