Return-Path: <linux-man+bounces-203-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2422980121A
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 18:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 560991C20A06
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 17:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12C54E63F;
	Fri,  1 Dec 2023 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lanl.gov header.i=@lanl.gov header.b="EjfgONWK";
	dkim=pass (1024-bit key) header.d=lanl.onmicrosoft.com header.i=@lanl.onmicrosoft.com header.b="AaHPOwYg"
X-Original-To: linux-man@vger.kernel.org
Received: from proofpoint8.lanl.gov (proofpoint8.lanl.gov [IPv6:2620:126:4000:1801::a8])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69DE4D3
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 09:52:19 -0800 (PST)
Received: from pps.filterd (proofpoint8.lanl.gov [127.0.0.1])
	by proofpoint8.lanl.gov (8.17.1.19/8.17.1.19) with ESMTP id 3B1AtstR029772;
	Fri, 1 Dec 2023 10:52:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : cc :
 subject : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=lanl;
 bh=5a317t8PDDfeVpYGyhrR5BAhFgfRftd3KjRPUY645n8=;
 b=EjfgONWKXeMu7l1qznPHjW0h/gnkry12tSnCK3lejbBQfuRVq8zod6wDQM+rU1AWpc1h
 bAy3Y3Rr5PNQw1W+B6bhqN5eo90DI7n2/XbXisnuu+SBr7XfJn4AlfojrhIBBaCAH39L
 RQJlm9rXrMue2oCfIcoK8w9I+rVFCjYnnXhu9iSNJVYzrtE2bZbb48ZRrLcTn/uWzbq/
 2IPLnGDr+R1Baw4+SVwV3bAeYzULmeOhvnGnuTRhHCT7tsHYHSQma72ZFrpTnXyIZRF4
 g5YooDnYQNKfE+gcby300vchK0SDwfIabAi63sCenpZQesOouC1+rs/8wvwOzWC4gyl+ jQ== 
Authentication-Results: lanl.gov;
	dkim=pass header.s=selector1-lanl-onmicrosoft-com header.d=lanl.onmicrosoft.com
Received: from mailrelay2.lanl.gov (mailrelay2.lanl.gov [128.165.4.103])
	by proofpoint8.lanl.gov (PPS) with ESMTP id 3upgqurey6-1;
	Fri, 01 Dec 2023 10:52:07 -0700
Received: from localhost (localhost [127.0.0.1])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id A43F1100B19E;
	Fri,  1 Dec 2023 10:52:07 -0700 (MST)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay2.lanl.gov
Received: from EXG16-P-MBX01.win.lanl.gov (exg16-p-mbx01.win.lanl.gov [128.165.106.181])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id 8DCB71002889;
	Fri,  1 Dec 2023 10:52:07 -0700 (MST)
Received: from EXG16-P-MBX08.win.lanl.gov (128.165.106.188) by
 EXG16-P-MBX01.win.lanl.gov (128.165.106.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Dec 2023 10:52:07 -0700
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (128.165.106.254)
 by EXG16-P-MBX08.win.lanl.gov (128.165.106.188) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Dec 2023 10:52:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kW5EXTTg0wUipmSMlEUAN8pikoWTOe2z4dYkHSAz5LVFe6E2icHgfNlC8yo23JI9XQqHYcAhS7dmU6BrtQmjAGysImfF+tRa5sUoxKghrx9TnnkDSE8gTHlpUIVLVglvboHboXw2HrZly16fdkPbkhrGTufyfvJAyu1xqM7NYCtakJczNENXzhPzqTSf7i/yFnA8fXLdmIo8BL+khgJiNaTcnBE6IQNZBcKeEcL70BD2VJIKEfxZjeCXwdik9hVbUCJgyvFyU1c7D8HR1yZF35kY7VlzIg9S+Cyf8FdmuEs5Zv+HZeKlNoyNhChNq4RGBCt+dwby6f76nV0dNaE5qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5a317t8PDDfeVpYGyhrR5BAhFgfRftd3KjRPUY645n8=;
 b=CE7XWTe03Sdpk4x1Lc9sbbR7nBYhOiXfAN6OYcwMlUA4iLLbRf+LQFSJQrjbilPMNh6AvpeXv3F48FE0SWl6vRexDfdAhFv2PN66QTezqFpsoLXm+mwGLadNtKxjGk9q05NH92G0fOyGVdwT3bUXmNMFchwhyh7TkFy5yy5QbE1OaXeSyJ9M3IVNZsYQg8DeGIcZPAs8NH5zNlDblq3sDKG21hn7WrEBcDsbdx2bfk0jiVD7soiklWuvd32KjWrEFw9Dwcey+B8Be9FCfYjFmux0OfD8CQYMyrgXTXkfyO3HIsBniJStY4K8DkBJUpojlWeapnmNBjCU2H9aAysCcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lanl.gov; dmarc=pass action=none header.from=lanl.gov;
 dkim=pass header.d=lanl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.onmicrosoft.com;
 s=selector1-lanl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5a317t8PDDfeVpYGyhrR5BAhFgfRftd3KjRPUY645n8=;
 b=AaHPOwYg/ZsAUjHGhCYN9nRCoi6rMSwSQQml+b2j/Y4+iS0NbAfBZ0+x4KUFyFCNObuLTwp8kGsayKq+v56Qo5uWmCj+Mp8c1txCHYApLm8AAjrGxslQABeJ2XLN/AXgR1+BpK4Sk+z3lKXtiQL+KxBhyUEVbuODBZmaCRtdXsg=
Received: from DS0PR09MB11140.namprd09.prod.outlook.com (2603:10b6:8:177::18)
 by MW4PR09MB10187.namprd09.prod.outlook.com (2603:10b6:303:1f5::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 17:52:05 +0000
Received: from DS0PR09MB11140.namprd09.prod.outlook.com
 ([fe80::2350:a866:85b0:227c]) by DS0PR09MB11140.namprd09.prod.outlook.com
 ([fe80::2350:a866:85b0:227c%6]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 17:52:05 +0000
From: "Priedhorsky, Reid" <reidpr@lanl.gov>
To: "alx@kernel.org" <alx@kernel.org>
CC: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: mount(2) missing EOVERFLOW
Thread-Topic: mount(2) missing EOVERFLOW
Thread-Index: AQHaJH8YfoM8HIXBmU6GBleFPV4VuA==
Date: Fri, 1 Dec 2023 17:52:05 +0000
Message-ID: <A1B87125-51E7-498B-B362-502616EBED08@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR09MB11140:EE_|MW4PR09MB10187:EE_
x-ms-office365-filtering-correlation-id: f1b9c2cb-d2ff-46aa-de03-08dbf2963b26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FOCNZSmHgeveU9laAlxNv6wkAaZKjLBlduajTs/c2bAa4/YWnjtaSVCbP2+pUu5468Ey4l+rWFJM5N9DeAPweaevXkIdxg/PayWVBurxt4gRcGhySNxjcvQLHlXJt+NG0JsMgyDpECPKHhHXiklPF6+yHefd09IT2EH5qjVH2nX8HB1oMY2wR6fNZfUIBUf3A0qo78Mb7hO9x7A2FEVWZxdcBAzwBY6/3wjSbaA0nqw6S6f7tHiDHkBrsqTC4sbg/IFvtwb+AP7bXS/TJBOaL1zkeoFZUXnnKX2ipYUHaB/VP7Gyn5/2uyV+Zc4yYU7Jsyu0k+4lrD1bESkWfkKHyBrOtPzRhiNr4ZvL55oPll1cXhFI1TCkQYf8Jgaawcy0IeZmvvj5PnYQwt2RLvp4QWc4/OBLf3jlGWCHcQ9ygkSOQKwwTO5A6z5CVlX5yPm12aXvIjLaNzNAxITJqbItP8U6wehbdoW9X1SgY/ZwEFu6hko+e4xrIHWYXuf+/ExPUgO4oHGCe9XiIHn9C58sqztWqAIdhxh/w0XJCw3UeF9NP6tkEzOoVtjXyiHcqAK40G6/mCWjywBGT2WAD+B0PnVUj0D9b5T7XBw6MOH3Xx0iIs1PYbyYt+2OakAP2ToYpcTH1JJWyryxEICp+m5N/w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR09MB11140.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(39830400003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(5660300002)(4744005)(2906002)(66446008)(66476007)(64756008)(6916009)(4326008)(54906003)(66556008)(66946007)(91956017)(8676002)(8936002)(76116006)(26005)(71200400001)(41300700001)(6506007)(966005)(6486002)(508600001)(6512007)(2616005)(38100700002)(122000001)(38070700009)(41320700001)(36756003)(33656002)(86362001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2dLVVNqT3QxNC82L0Q0RTFtbkJNYlladU5QcUY1bmIrVVJ3eXZra1k3Z2tx?=
 =?utf-8?B?K21keTB5cE9TVjVnN0ljcDVPNGxheVlJM0NkQWFTOVJEOXU0c2xDblBFaWpj?=
 =?utf-8?B?OVdDRS9JSThmYzRnZHpMNXpRWG9lMU1vamlNOEhBVFozR1BaWklLZEYvQWlh?=
 =?utf-8?B?WGxlYkI1M0ExQklwK2R2TkNzRHJXV3dBaDgzMm5oOTZRRm9vdmp0SENHb0Js?=
 =?utf-8?B?cXd1YUJjYkEwL21JNlBuRExmYjdKRHdxd2psdFgxanNlRk1JTThjb29hcmla?=
 =?utf-8?B?d3ZhRXRHSFFFVHhSVm9VSU1qcEhHbEhSVG1YcGdvQUpyVlFKRSt1cVQrYXZI?=
 =?utf-8?B?VW84Z01Laml1TUMyQjdzQXdmdmRxZ25JYlBHbHJtZWpQNDQ5R1BaMmh5R2pK?=
 =?utf-8?B?N3MzWUZvNGFkbG16ZlZGOTdySmV5SUF3QlNWdnVpczVvK25OQlpqTUd1ZSts?=
 =?utf-8?B?UE1ZNHNMTGxZd09QNU5Rd2VwaXJhT0s3ejBrekpCeTZQbVNTOGlOYmFmQ0Qy?=
 =?utf-8?B?OXYrNFozZnhMRngrejhSRVNJS1JtMmVXYnpMZUIvamZScWZpVnJlRTE3cy9N?=
 =?utf-8?B?T2ZibHhRQ3lnbzBEL3A4SERqVGlyWU1FOE4wR21haEZwYVhVZGJmWjJCaktP?=
 =?utf-8?B?aERCV3NRdHpEWGRBNHZUVlVCLzNNNXVVekQxRGV2R3B2c3J1VXh3YnVjVjJV?=
 =?utf-8?B?eWFHbk9rSTVtd0ZybFN2U2V4Y0hGVi8rcHdoV05XRHNNTzBlQXhacW8veUFq?=
 =?utf-8?B?ZlRoQ1cwa0ZjWWJsdkJaN3h1ekxmM09LNm9GSGsrYWt5RGVwT3hmWkRpNE51?=
 =?utf-8?B?K2hkdlFhZC94SGJFSmFXZ1N3TkZsdGc2Zk1zbzJLL0JMZ05DU0xJMjZpa00v?=
 =?utf-8?B?aWZQQzh0eDA5Unhjbk9xVFRNVFdLRnRWVzdoZGY2SE9aWUpUTDIzK05CY2p0?=
 =?utf-8?B?OXVGOWlEc2xXUFdXU210aXpiWWlNcWprbE96YzhJRWtWcTNNcDJueDg3R0VE?=
 =?utf-8?B?TFZRQ2tabGZVK2w4bFQ3Q1dIVUk5aVZzUFU4M1V2S2FnUHN1dXVFbzBEQk4w?=
 =?utf-8?B?RjZUdkI2dGZYMjVrRzl5bEh6WVVFcGNpU1d4dWN3d0w5dUFERHhRODdOcERP?=
 =?utf-8?B?dU9zcjdXSHJzOWNCbm1FQS9PRmhpZ0I0T2Nrd1N5K2ZZdlNsVDJLQ3lHbG91?=
 =?utf-8?B?dGcxa3NidG85VDdMUU1WRktqNUNkdXBaUmlmdC9aVjJQSmoxN1dxbUdRcFFk?=
 =?utf-8?B?NzVIc2owcTNFKzhlWkY3bGJ0UG9hL0xmNUJDUmIwQkRHMm53NEZBQm05YWpq?=
 =?utf-8?B?ekRCTHd3UVY4em1SL1dySE0zMTFLUXdNMHQzMy9iNWxqdkJsYk5kODZJSU05?=
 =?utf-8?B?dUgvUHBHUWlsOHBBN2tKSERYK2U2amRlMVhoY3k1eE9zR2RnRGlCYTJxL3Zn?=
 =?utf-8?B?eE1rSFk2eUhlNjZ2OEYrczVTaDFRZHJsdnNpL1NaRWd6anVGT0FjLzBoa1li?=
 =?utf-8?B?M0s3aHMvenBUNnVabTNYVEszQXk4UWVqZHFwTHVZclRiVlZhM0cxNzJGdTJT?=
 =?utf-8?B?ai9ETTloT3JsMHJ5Rk94S3gwZFgxa0x2S09vTXF3bWVwL3JmeVVaY09wNXdJ?=
 =?utf-8?B?cTU3KzlyMGtZR1RVVGZFN0JSNVZhcFZuem9PNFIwcVBkbE1FWHVsb1RjTkw3?=
 =?utf-8?B?OFdpVkllV0RyczNQLzZvNkFTUEN6UWo2TUxBM3F5cXJkeXB3bzN2NWVYMmZQ?=
 =?utf-8?B?L2pYSWpleThEYTZCZGl3ZFhSVDRqWkN2VHpudEIvQXRPbDFrZzg1cjJWV21l?=
 =?utf-8?B?cjd3L1d0THptYXRDZkZZLzB1bjVoQ09oVlpqRTdmK0tvc0V5ZmNCRGd3UnY2?=
 =?utf-8?B?OFJCSHFrKzVJNDFFT0pQaTVTVWRvVm1zcnVya0F6V1ZtcWlkR1orSWx5amNm?=
 =?utf-8?B?K2N0em9FakgvUGVFWE1FMU5DTjRxejhpVzZVRFZvTXl1M3RobkhsS2pOWnM4?=
 =?utf-8?B?Y1VOVE9kbUVvaTVtVEpGTUtkakduLzVHdi9qcHdXNS9waHNUOXg5Wm4xdGh2?=
 =?utf-8?B?ZGtqLzUvUHN2R0VMQVhZL3p2WE5DQXVHalF6Y2QwTDdLL1RhcHV1NFZaTS9E?=
 =?utf-8?Q?9jvBSzStzXWRfymRMs/u0No1l?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0B9265D4C81B34180200E4F41038B3F@namprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR09MB11140.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b9c2cb-d2ff-46aa-de03-08dbf2963b26
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 17:52:05.3911
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5216f00a-5b2e-4784-b2d3-ed19b748fd60
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB10187
X-OriginatorOrg: lanl.gov
X-Proofpoint-ORIG-GUID: W58PGrSRRcY0NkPHlDG6v1zJ8sfSvHRR
X-Proofpoint-GUID: W58PGrSRRcY0NkPHlDG6v1zJ8sfSvHRR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-01_16,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Reason: safe

SGVsbG8sDQoNCkxvb2tzIGxpa2UgbW91bnQoMikgY2FuIGZhaWwgd2l0aCBFT1ZFUkZMT1cgWzFd
LCBidXQgdGhpcyBpcyBub3QgZG9jdW1lbnRlZCBpbiB0aGUgbW91bnQoMikgbWFuIHBhZ2UgWzIs
M10uDQoNClsxXTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0x
ODM0NjENClsyXTogaHR0cHM6Ly93d3cubWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjIvbW91
bnQuMi5odG1sDQpbM106IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1w
YWdlcy9tYW4tcGFnZXMuZ2l0L3RyZWUvbWFuMi9tb3VudC4yDQoNClRoYW5rcywNClJlaWQNCg0K
4oCUDQpoZS9oaXMNCg0K

