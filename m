Return-Path: <linux-man+bounces-805-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0F28AFCC3
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 01:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99D651F24D16
	for <lists+linux-man@lfdr.de>; Tue, 23 Apr 2024 23:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F6D44391;
	Tue, 23 Apr 2024 23:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="QdxiCoQF"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2138.outbound.protection.outlook.com [40.107.223.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E39644384
	for <linux-man@vger.kernel.org>; Tue, 23 Apr 2024 23:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.223.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713915424; cv=fail; b=A6iFqn7Zu7jYoqVirzCR7TQMJvkQ8N3E/sOu1JseO6o/0mY8ZJRTolgmNzCSVVZlH8Y1K6vlBfT3Jx0b5ESNsS6socEdS2+IDeCdqQIUfxh77JJaWIbMbW0WeFTLT8FMBvlu/wuTSom039OWUw+es3SV/0LTjMn7HZmV+8T5XeU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713915424; c=relaxed/simple;
	bh=2Kt/RytBJPvsTh8l54wJ8q5dcQFDQmYrIRDJsDWzYpI=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=TMjtVq7OPKm+f0sAQK/JEiTNVnSSS4ywWsYrYJDaFdeYXZWydsJrG9SnZ4gNbb+cq25gnALLdKwkpjZH/hOOlF/61v0QyPA/6B2bsBKw6yjao6/9Tp+gIsttiVQ1XG/dJdE4wTsfx5KXRJAWNzOz8lE3/f+OZMLBm8Tp0l+AmXA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=QdxiCoQF; arc=fail smtp.client-ip=40.107.223.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JR/dEPk4apxXTGJX7lPc2mM3FPudyLVlJ/Kx7ZXHsqvl+i2bxaZuAYYuhzLvKkDlXcAtERmMtHSLH4J4UWHcNBx2wsZ37aWpo9zfxopsfFmbqEbnNyccJt8I3IgJHCV91ITXYbcivLwMzh2kfim6/EBMf/BX3pHa/J31ofrst5i6cYEErxLfBZ7UlXL5sZ+OBpXL2YaXa2QhL6gBTbuFk0RI4KpH1KjZaa1VocgJ64SUvvZRMs7Rdbmeh+PJZ7uyHAe8aPPdsrh+lxarKmGQgjxbsiSKznFL30M2i31UCSAd4UVK+DpWjfr+JQ0gxQrfM79eEoQ8wnoL2/nSYKmM3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=01AvfbqWpFXhjc8LSfHjU1iU8v90JpJAQ9hUaKk1WUg=;
 b=JeJCZFa/rrM0hTkFrd+pgejZGwXjV77YGzPCEEbD0Aov5MkzaF+N5HI81nXo0nFGcBYz4WWs6H76htdoiSLczbpTekeAC5GULoWYNn/h3PKElp5PIcOtGtyqBSRaH1WMjOFLa1Vqt0gROyhImdY1PG1lEg/qCOJERcE/jVejyyD2+6UkVa/1/q9cf1oWTcoQpaZPwc9oqoHGAE+KU3vE3m2u5v+aAb2gzZfWRrCkekQo+G4g5Ecu+AGI2iegQPK4xQrMhFnd7unK0ToflI61+HjnCLudLDLGDBreKZX8gEYZa93dJHqEpRB54HMwnX7nk6M53K6xvo4wr2WiWeiW0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=01AvfbqWpFXhjc8LSfHjU1iU8v90JpJAQ9hUaKk1WUg=;
 b=QdxiCoQFNJcMKrhT9PTVwwt6yjQbAk1jUy4MZy4vBw4/Rx5gIVIh1Zuz/P7hhsoX7yrp4+ykTqGk+UhOJLNabes2ZJgohMs6Giy7w8xjGDQHOutM1Q/UYLF9Drszjo921QDnYNrYtLTLYE9LUAqVQDFLBzGYejtWljSC9myMFTs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from CY8PR17MB6330.namprd17.prod.outlook.com (2603:10b6:930:9d::11)
 by BY5PR17MB3908.namprd17.prod.outlook.com (2603:10b6:a03:237::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 23 Apr
 2024 23:36:59 +0000
Received: from CY8PR17MB6330.namprd17.prod.outlook.com
 ([fe80::e98:5c1d:ce2b:8f43]) by CY8PR17MB6330.namprd17.prod.outlook.com
 ([fe80::e98:5c1d:ce2b:8f43%7]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 23:36:59 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Tue, 23 Apr 2024 16:36:56 -0700
Subject: [PATCH v7] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240423-weighted_interleave-v7-1-0d91158a4eea@memverge.com>
X-B4-Tracking: v=1; b=H4sIABdGKGYC/43QzUrEMBAH8FdZcraSmU7SdE++h4gkzbQN2FbSE
 pWl7266IBbJweN/YH7zcRMrx8CruF5uInIKa1jmHJqHi+hGOw9cBZ+zQIkka6irDw7DuLF/DfP
 G8Y1t4ooNELBvFPWtyJ3vkfvweVefX3Iew7ot8es+JMFR/fGo6CWooOrYKK/JO+npaeIpcRz4s
 VsmcZAJz4wqM5gZ1xBaMo2SThaY+h9MnRkCbcE6CQpL29CZ0WWGMqOtU6B7wI59gVFnxpQZdfz
 GIFjSXjl2BUb/MiSxzOjjqA5NC62EWuEfZt/3b0X2vugcAgAA
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713915419; l=5230;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=EC/5YFkp1kxSA4KGm6GJjueLYz7RQ3ZN5K7swzi+FTc=;
 b=2sYN5yuCMEbB6PdfkIFXXww19PW39oayfBeb3xs22gqAcd3ZFkt7NYUFtTD/DV+5/N8XL+UIK
 b9Mc/UBVnRWBZterYG3eZVsOIy4VvKKZrPChd3eWTYm37WAtjHPhLRi
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: BYAPR01CA0002.prod.exchangelabs.com (2603:10b6:a02:80::15)
 To CY8PR17MB6330.namprd17.prod.outlook.com (2603:10b6:930:9d::11)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR17MB6330:EE_|BY5PR17MB3908:EE_
X-MS-Office365-Filtering-Correlation-Id: dc521a1f-bd02-452c-37e2-08dc63ee4513
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dVBVcis1c3BKeWVNYVpBUnQ4WWxQeHdnaVpaQTRHQi9mUTZRU3c3cW9hY3lW?=
 =?utf-8?B?UDZVSnFWYkZZaTJuOTBHWDhUc0dkRGRmSzdscVp1NmkvWXpmRExFbmMwMWhD?=
 =?utf-8?B?L3l3bytrcXJhTWhuMDkwZ0lmMUd0WlQvcjN2TXhLcEp4NXlTLzZhWlY1cWNZ?=
 =?utf-8?B?dUNoazU3bEg5M0hBMjdQNmlSWm9ZQW1CRlJBdnZTbEZQYXFNME80Slg1a1ZZ?=
 =?utf-8?B?MjJUTHVDUkpHMWVCNUt0b2MvbnIrenU3Y3RVZ1dCdElQeFQ3T3dBOHlVT05j?=
 =?utf-8?B?ZzFqQmpRQ3BOUlU4dVRiSmZVeUYrWjB0TDRCNWswOGZiRit1bVZHZ09BWXRz?=
 =?utf-8?B?djF1cnlnUll5ZGdTY0g2eDBQMStCc1hGL0FCd2l2MGtZUzkyOEU1TldRcXBR?=
 =?utf-8?B?eENYd0FyRHl0bU1Mb3hvSUJUR0hCSmtwMHArY012cnRqSldvamNMQnhuR3lx?=
 =?utf-8?B?WTlxdW5YdDhWUS9oY3l1dzBhaHFUeGFRVytqZFY1UXlXMnJxNzJYOFFYRWRn?=
 =?utf-8?B?ZndiSEI4TTRHbWFkNDZuWDZONnc1c2VUWWwyc3kyR2EwYnQ3VDdNNUc4Q0dL?=
 =?utf-8?B?Uk1KWGdXZ1V5b0ppbzNpNXNuTXRsWUlCTWk4RVRoMFd5T2dyUnVhUGZ6RXMr?=
 =?utf-8?B?R1dLa09mNkFIdUpOeUE1eFJjdUVnY3dyeU5BUjRnb0NITnJaUEk4VEFYWjY3?=
 =?utf-8?B?SUk5L3F5QURxbFBNSndpNEpZNUVERkhrQVNMR2JUQmZuV3Q4cTBrQmhDNk5n?=
 =?utf-8?B?TFBKVVRpUDlhTmQ1M1FSYjI1ay9zd3NpUGhJaXduVTlrQTIwd0Zub3NxSlRO?=
 =?utf-8?B?MWIrWDFIc1NlY3loRkdIVFBlckk1OFdTSmpYWW5lWUp0WUM0ZHg5TDRGS2d6?=
 =?utf-8?B?dEF3WWN5NnFDbWpoZ2tHZTE1NjRxN3gvUDdhZ3o2elg2M2U1eG93czNWSFN1?=
 =?utf-8?B?Zy9FaHY1QVdJRlZDUjJ5K2wvdmN2VUJtU1ZTTGx1NlVKVklmUmJWYkRmSEQ4?=
 =?utf-8?B?M2cySUZ3aWtORzFJWVlBek9VTFRrSGhaeVNBYWZaM01xYWdnVXhrMFRmVGtJ?=
 =?utf-8?B?eGxsQXQxMjJkRUFvaFN3UG5zT0VCSThWbndKTjcyZXRITEtrNENXWFdQNjZa?=
 =?utf-8?B?WWVmVXZOMmFVVElZeVhPOW5DS2NnQmxlYXRIcTN6U2pJRzUvcmxrLzJ1Qzdt?=
 =?utf-8?B?Zkt3NGJZVWZ6Q1J6VDhRcXp2NklRYjUzbUVFb1AxazhXdmROOXRZNzdhb3JC?=
 =?utf-8?B?MVM4Q1RWUTJFUFc0TytHaTJoNHlvMFBETytjYVIvT1N3S01XeXByZWhjZXlO?=
 =?utf-8?B?V25EQVl2T1FiKzFBWkJtZEtYQjV0d3NSSkhZQ3oxQUoza28wdGN3TlRkYmRU?=
 =?utf-8?B?YmJ5MlJKc1Y5TDdmaE1DVllkTG5RS2xtVVdHVnBIbmpUc3Q1eC9nQWhYRHh3?=
 =?utf-8?B?KzNCa3c5am1zaE9sbzdCYXZqQTdKaDZpSnJWMnVDc0JEVDh0OVB1cmNjdkNH?=
 =?utf-8?B?RVZKQzgzckN5ek91bjVJVHJsalVXeGxYU2NabGZEZHlOTHZRdFJ6MjhheGZp?=
 =?utf-8?B?YitTZGFUTy9DMXUwUHJzSDdQOVkxQ3h1VDBLQ083R3FIYndyQmNjS0REZ3JJ?=
 =?utf-8?B?bjd4TlBUQkZTalQydytqL1BETGUySjBCbTZOaEdIUlVRRDdLYjA1SGpDamFu?=
 =?utf-8?B?bWg4UlFlWWJNWlFXdmkyeVd3UFlVOFUwd3BsZEFmRzVvc0wrNTY3WWZ3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR17MB6330.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(52116005)(376005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SWNKb291YWorTzU0RmNwcm5CSkhPNEp3Z0ZXK1ExdXR2OEdJajdDKzNHOVlv?=
 =?utf-8?B?Y3dVL1JKaGYrZWYrNnVjSXk2dk54VGdhU29ZeXlVUnBEVW1lckZMT25PWkJG?=
 =?utf-8?B?YmFyTzRwTTVOMGVRWE1ib1MwV0pmTC9kQTBzcTlFaWtQSU1ESW1vMTMxVGFJ?=
 =?utf-8?B?Y3p0dFZzSWFOV3JzWEFDMXlVck0rUWxkQzdXc2kzMUdrSnZkWGFPZllHTmx3?=
 =?utf-8?B?MUFLM3BxckFaMTdMTmZGUmhSUHgyd1FLTFFKSXBGQXQzWVZESWExelhZK0Yw?=
 =?utf-8?B?MGZaMlBZSDU2ekRQZjNqSm1EdE5Qc0FLQ1VQblVHKzBRLzYvejdEVEhOd1Zh?=
 =?utf-8?B?SURraUhmTnN3WWE5cEhzSWZYWXZkWDE3azdaN1ROS0UyR1diK3poRmhKNmt0?=
 =?utf-8?B?ZmlxYjVOc0t2Vk0zcnhUckxYajRodm9CTUd3RmZheHYyNXUvdVMwVTMxaEMz?=
 =?utf-8?B?eWQxaU1yaXhIYUdJSHU3aHlYK2oxaHZMQ2tjSGhkcUUxdE5RSjRRa0swT2JF?=
 =?utf-8?B?MWw0L0NZQlFXenovOFh6eWJNeDZiTUFrSm1ISlVqbmtZNVo5eHZ2dWNLZ2lp?=
 =?utf-8?B?TjQ5TFF4cXJQdnNyeUxPNjZ1Y3JOSTVzRFNyRms1cWtjQTVST3NvTUE2dUlK?=
 =?utf-8?B?WmhaeEpnWG9XRm1EODExZVlZcFNQQ3J5M0JKbHdHYm94Nzd3UnhxM3BySnVB?=
 =?utf-8?B?djl4WXpObVdseTJLSEl2dHRGbXUyNVF1dk5vVkJ1VGtIbmVmT1IyWURWS2ti?=
 =?utf-8?B?bnpEenh6bzZLL0I2aDdWNG00a2thWEhrcTJLeWFwcERLS3R4Nm1iV29ySVJV?=
 =?utf-8?B?QThXdEhNK29tWUhDQmxBem5ESWc1RkVWMFJsS3E5OS8wS25XdlhjVm01R3NJ?=
 =?utf-8?B?aExBclBzMjBaYTEwMlcxUGJ4ZHBsOXp5YldHeGI4V0hLN3VLa3BpR0FGZCt0?=
 =?utf-8?B?cEdhT0RMQXo3bDVkM2pMemJzK1NlSkR3M3ZtUGhKS283ZHBDTmNsSW5XVW1W?=
 =?utf-8?B?b1kzSkppZmJzdi9OZWpGRXJjZW5qdHRlQVJ6NktEZ0ZWRGpveGxFWWpVWEt4?=
 =?utf-8?B?aWZzb2k1c2hoR2ttYWlpS2l0ZjQwckl6ZDJWeGdJREdidkt0MXdOQjRWMERp?=
 =?utf-8?B?TXhZZUQ5bk9kSCtidWUwRFhkNzE5SEpHRlVlaTNxaUhLdnE3eGw3NzlTK2Nh?=
 =?utf-8?B?cDNJZTZHd3lrbXNaZS9OM1grTU1XRXVVNlVRZlpHT0ZKc3BQWWttWTJnZSti?=
 =?utf-8?B?L1lrNlJ5UElnNDF1QUtVOHFjbVJnY0JzYmFaVytHODVweTRvWGN1MVUyeHA5?=
 =?utf-8?B?bldBalJkZmd2SEp0YkdoT0szYmZRTjU1SDVlcDlNWnJOVHlITlBnMTNzS1U2?=
 =?utf-8?B?NHJ0TnBzY09rVEpUMEh4NWpWZjNtVy8vMFFXRURDT1F2OWlTaDVmVGF0d1pk?=
 =?utf-8?B?L1FQNnIyVzFNUlJhL1RtYXVZYjJaM05oM0JXOWQ5QlFEaFo4UUNMdVkvUi9Y?=
 =?utf-8?B?Mjh3bGhWZVlkQkE4bEppUUN2TTdCSDVVTUFxeVltbWVlejBSRHdOQzBGM2h3?=
 =?utf-8?B?VlBJcDJXU2lEb2Y4clZrVGFzYjN1R1k0THZtNjdnR1J4ZEl5eHd6QWRxZGJ4?=
 =?utf-8?B?aStJV1JLUGQ5b2pTeE1KaHR1bjlhUTVnaEU0K1RMMkk2b2VBWDhNSUJJRXdJ?=
 =?utf-8?B?Z1dtdklQWWI0QnVkRXdFVEhDY3hsVUV1OW43K2NCSU9wR0VybGxJYWYrN3R0?=
 =?utf-8?B?SVVET3l4S05mbWZ5VkprSCtzTzQvN29HZXBKOWdIYlk5RU1md1M5cmt6Yjhs?=
 =?utf-8?B?eGdsM2N0K2ZCQVhuTGgzVVRDcmZCTDdOMDNsTm03VlNYY3ROQlY1S3lORGFQ?=
 =?utf-8?B?YUdBRU1ReWltU3NCYUZ4d0tkaXprUFV6czdZcDlzUkxPT1RqamQ2aTFOcVow?=
 =?utf-8?B?VVZ1Q2NsWWJ2S2xXNkVyczZuL05Rc2JJOHozcXlnREVxUCtSeFpnOHkwYmJr?=
 =?utf-8?B?VC9VVm5YUVplaXZ4b3g0WGcvemZQdjNEeHFPOC84ZEVoYlVITmluMUJ3S0gw?=
 =?utf-8?B?RTFaZjhSRnArVVc0VUtDaUxvNmFONnc1R3F2K0hGaDk4eDRkWE50ZHZKVU5S?=
 =?utf-8?B?R2VBUmpQSno3Z1NXNHhmMHNsYnlUN0NvM0wwdjM2ME5mNzVlNlFyK2F6aDBC?=
 =?utf-8?B?YkE9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc521a1f-bd02-452c-37e2-08dc63ee4513
X-MS-Exchange-CrossTenant-AuthSource: CY8PR17MB6330.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 23:36:59.2694
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZI1m50r1+MlRtKBZ7T09ftieLMwRxgp+EqiEfeGoTjk6ml2hDY11w5Lkc/k9ZlpXCDJGtQ8bSz8w7pMGJDZzHkDTNZ9wfLPy2bMEp/nwzQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR17MB3908



---
Adding documentation for the new MPOL_WEIGHTED_INTERLEAVE mode in the same
manpages that mention MPOL_INTERLEAVE; namely, mbind(2), set_mempolicy(2),
and get_mempolicy(2).

Descriptions were based on the changes introduced in this patch: 
https://lore.kernel.org/all/20240202170238.90004-4-gregory.price@memverge.com/

Which was upstreamed to 6.9 here:
https://lore.kernel.org/linux-mm/20240313200532.34e4cff216acd3db8def4637@linux-foundation.org/

To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Cc: gregory.price@memverge.com
Cc: ying.huang@intel.com
Reviewed-by: "Huang, Ying" <ying.huang@intel.com>
Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>

Changes in v7:
- raised -> set
- Link to v6: https://lore.kernel.org/r/20240402-weighted_interleave-v6-1-4c2891901352@memverge.com

Changes in v6:
- either/or -> neither/nor
- remove version parentheticals in get_mempolicy.2
- Link to v5: https://lore.kernel.org/r/20240318-weighted_interleave-v5-1-c821a46d5beb@memverge.com

Changes in v5:
- document kernel version where WEIGHTED_INTERLEAVE was added
- Link to v4: https://lore.kernel.org/r/20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com

Changes in v4:
- BR -> B in get_mempolicy
- use roman for ellipses; format using \|
- Link to v3: https://lore.kernel.org/r/20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com

Changes in v3:
- italicize paths
- Link to v2: https://lore.kernel.org/r/20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com

Changes in v2:
- make flag documentation implementation-agnostic
- Link to v1: https://lore.kernel.org/r/20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com
---
 man2/get_mempolicy.2 | 10 +++++++---
 man2/mbind.2         | 18 ++++++++++++++++++
 man2/set_mempolicy.2 | 18 ++++++++++++++++++
 3 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
index 5248f04ba..f6f80ab3e 100644
--- a/man2/get_mempolicy.2
+++ b/man2/get_mempolicy.2
@@ -137,7 +137,9 @@ specifies
 but not
 .BR MPOL_F_ADDR ,
 and the thread's current policy is
-.BR MPOL_INTERLEAVE ,
+.B MPOL_INTERLEAVE
+or
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 then
 .BR get_mempolicy ()
 will return in the location pointed to by a non-NULL
@@ -205,8 +207,10 @@ specified
 .B MPOL_F_NODE
 but not
 .B MPOL_F_ADDR
-and the current thread policy is not
-.BR MPOL_INTERLEAVE .
+and the current thread policy is neither
+.B MPOL_INTERLEAVE
+nor
+.BR MPOL_WEIGHTED_INTERLEAVE .
 Or,
 .I flags
 specified
diff --git a/man2/mbind.2 b/man2/mbind.2
index b0e961f9c..96264ce81 100644
--- a/man2/mbind.2
+++ b/man2/mbind.2
@@ -105,6 +105,7 @@ argument must specify one of
 .BR MPOL_DEFAULT ,
 .BR MPOL_BIND ,
 .BR MPOL_INTERLEAVE ,
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 .BR MPOL_PREFERRED ,
 or
 .B MPOL_LOCAL
@@ -243,6 +244,23 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
 Accesses to a single page of the area will still be limited to
 the memory bandwidth of a single node.
 .TP
+.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
+.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in
+.IR /sys/kernel/mm/mempolicy/weighted_interleave .
+For example, if bits 0, 2, and 5 are set in
+.IR nodemask ,
+and the contents of
+.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
+.IR /sys/ .\|.\|. /node2 ,
+and
+.IR /sys/ .\|.\|. /node5
+are 4, 7, and 9, respectively,
+then pages in this region will be allocated on nodes 0, 2, and 5
+in a 4:7:9 ratio.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index fc3ad9df8..f1f225e32 100644
--- a/man2/set_mempolicy.2
+++ b/man2/set_mempolicy.2
@@ -63,6 +63,7 @@ argument must specify one of
 .BR MPOL_DEFAULT ,
 .BR MPOL_BIND ,
 .BR MPOL_INTERLEAVE ,
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 .BR MPOL_PREFERRED ,
 or
 .B MPOL_LOCAL
@@ -199,6 +200,23 @@ the memory bandwidth of a single node.
 .\" To be effective the memory area should be fairly large,
 .\" at least 1 MB or bigger.
 .TP
+.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
+.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in
+.IR /sys/kernel/mm/mempolicy/weighted_interleave .
+For example, if bits 0, 2, and 5 are set in
+.IR nodemask ,
+and the contents of
+.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
+.IR /sys/ .\|.\|. /node2 ,
+and
+.IR /sys/ .\|.\|. /node5
+are 4, 7, and 9, respectively,
+then pages in this region will be allocated on nodes 0, 2, and 5
+in a 4:7:9 ratio.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this node first

---
base-commit: a4ea5f76215dcf1d8d017eb65ab12919ccf09f3f
change-id: 20240313-weighted_interleave-e8141ed754f9

Best regards,
-- 
Svetly Todorov <svetly.todorov@memverge.com>


