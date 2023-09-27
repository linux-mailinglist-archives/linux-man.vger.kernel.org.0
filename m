Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35D307B071B
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 16:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232179AbjI0OjU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Sep 2023 10:39:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232176AbjI0OjT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Sep 2023 10:39:19 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCE34F3
        for <linux-man@vger.kernel.org>; Wed, 27 Sep 2023 07:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695825557; x=1727361557;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=AavMzr7zPMEb8r/msK1ogD/D+DGjLnM1F9swppHTuJ8=;
  b=t1ERtwmQmeGe7zz23rTFpqelWTJWsgKEEBiinCU9slkTqz+MvEwlfmD+
   gWdH4yiE2sYRnMXugHIq5wue5dXFIsYWjbBxEd+pLtYLVDY0Iw5mbOKEu
   4WkDKPjcAfemX/anJVS+txjP3ttZPpkQPhI2XDVGiSeHDwlaXZnsnLeZu
   YFuRzedyGV/+BLcuBUUDlBSBKMEt37qzMz33BTk3KTAEnRK0Aul5YEeNa
   RU5Yf50Aqb7Ir9EiyxrzSuVM/wL0TwTL0rjZCuITbw2/3BW9G9qrrCDu7
   REeKNV1r21NFMYl0oHruDOe51xRv0Iri+jOQ4w9YhYxOcmp9Q3KFj5gfz
   Q==;
X-CSE-ConnectionGUID: wy/wX83uSX25T8yQ8wHYoQ==
X-CSE-MsgGUID: zKezskbeSDWhJo4Wkpkktg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="173905640"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Sep 2023 07:39:03 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 27 Sep 2023 07:39:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 27 Sep 2023 07:39:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5zfAjsFvuZnaYfrXTcFpaerpp19UGTRx+jKnBujcPINKjdaBLWnnFuRRTAyl0Z/Ejtl2QDZXxYTT9hEsoVQ9TOP3/u+VwrGGoxKhfRD5Bz6xMlSuhryHDFYrT5zJhnjYHKL1wK+qpAxxa6ILMNWIldd2qIDwMvfpJ1vvCetmZC1+9RFXCRIGN57LUlzUiwpyJSFedlyk3hRkNLRRjRbLYtMQa10aTvfVBOEKll9sem8JU9HLKB7NNzkU4JUJ8w0poNmkbl3BcjJ3DwzARbavj0Pa0Su0sjDQiAWkzW0wOney5oiHGzziPRWkoJI3ggQ78Dy07BnXu/HAJTL0xLqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AavMzr7zPMEb8r/msK1ogD/D+DGjLnM1F9swppHTuJ8=;
 b=JAKcCF87noJsj5f2Hsmu8c521VrQJ2gkQoOEQnNpFIFBZcZy1FDFKdz9tV7VqgQkaxPZTlILUE+vISVL8/Rl6l4oJEX9rLM1AAkdPpT1WICQ65/SUeqsooe+yhKr8uXIjPfhcv5viq19bQMhSIv2KH459MKCFRXhmwXHVlnSWf33f05L/N97BY+kGaToVCksdl1cVqpyuXIAxNpCQUVhNPrunycOpyaRnHF2UZt08+VZwyoMGDyEIyX44VINziRD5a8wcghKlKPtLl1eETKonCY0hktIRvANfx5kw9+jGTEkxzBJtF0Lj100bL41U505YfUGCDXgxH+2Ot5SdREe9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AavMzr7zPMEb8r/msK1ogD/D+DGjLnM1F9swppHTuJ8=;
 b=Lw3lf5Ad+Of3jydPXvuKbSPySxm4ufqoHJTq3PXGKvrhrvVEJdbR5PUK+7nlj28LoQbMYhwXR7HfjJZIEmW+PLMS13UywxLgexzyn1coy4AudKbEQT5dNFj7mmnnmbmBxtHmrfnuudb31XV60vqw2oAFW6w6vwo/L/LT3eOFYuI=
Received: from SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 by PH0PR11MB7496.namprd11.prod.outlook.com (2603:10b6:510:280::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Wed, 27 Sep
 2023 14:38:59 +0000
Received: from SJ2PR11MB8369.namprd11.prod.outlook.com
 ([fe80::8392:9ff5:9dba:cde1]) by SJ2PR11MB8369.namprd11.prod.outlook.com
 ([fe80::8392:9ff5:9dba:cde1%5]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 14:38:59 +0000
From:   <Don.Brace@microchip.com>
To:     <alx@kernel.org>
CC:     <mtk.manpages@gmail.com>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH v3 03/10] smartpqi: add-module parameter
 disable_managed_interrupts
Thread-Topic: [PATCH v3 03/10] smartpqi: add-module parameter
 disable_managed_interrupts
Thread-Index: AQHZ8K3KrVbYxNDgLkmTz45kJtvyB7AtxwSAgAD3Euc=
Date:   Wed, 27 Sep 2023 14:38:58 +0000
Message-ID: <SJ2PR11MB8369FD5D8FEE08A5A0953709E1C2A@SJ2PR11MB8369.namprd11.prod.outlook.com>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-4-don.brace@microchip.com>
 <qjoscjfnrpcobzsghb6su5h64qwhdtzmst5o4iyhpcm7mifmvp@3kqt7qjlfp2g>
In-Reply-To: <qjoscjfnrpcobzsghb6su5h64qwhdtzmst5o4iyhpcm7mifmvp@3kqt7qjlfp2g>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8369:EE_|PH0PR11MB7496:EE_
x-ms-office365-filtering-correlation-id: 94e39d41-42ee-4098-9316-08dbbf677c35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cbfiotvo7AFv5i2mX4F35/0xG5D2OWvIX4m0RD+/v7ubBT3KgJN5WnV0ADqcSRnAMLM/KFaaX9LsKSEhIfpcbcSPuprmH3AgwX8EJe6c/vTO+GFYFxMe5VjSoYxWSofHp+tTDSyBlNAAEjJfKR9KrVfEx/eBmH1etMPi97Oq6PcIo6Fe5zntaLnUhx14FHO/0L2ZN6b+Y//42rtAzVXEKlnEeRv57/HGMQ3G5Kufmoy7PMHkAIPefl+0YsbhLDmmRh7pyR159pMJAfNDi1dFnBecYkRfmulTSqy8PZGo69cs24oQSAvX0ilMQnTFgjcB3cRURI0+mCMwsQ+ymTOSGRCTMiv7X0RGibq97qV+ku9IB4xoUmnT9g7s1xJ3/zGNKEvSkncOVEr5VmYBpLvx97X/7e8TPN3kucfZBzNkm6waPdAbRVo3VxSRRtAWaMwUc8LXYQX/DHfb63zhdNV0QaANMOvN4WVoX5rCs3VzkMNvMZ21K1GdYiPoFLCm9ixd1YCM+lEEW7G/Wig9F9NITdqi5enA6vLMp4dJWeE0w0r2jUvNol0u49m1a+PElKJDkObolK2Fa4Gho3v+J+BIvHrI3vOmP6ABFUPJVMicb/813PfLfQqBPOQ93NLS7HcN
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR11MB8369.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(136003)(366004)(39860400002)(376002)(230922051799003)(451199024)(1800799009)(186009)(86362001)(33656002)(55016003)(53546011)(26005)(71200400001)(6506007)(5660300002)(76116006)(52536014)(66476007)(9686003)(66446008)(54906003)(66946007)(91956017)(64756008)(8676002)(66556008)(41300700001)(6916009)(4326008)(7696005)(316002)(8936002)(478600001)(122000001)(38070700005)(2906002)(38100700002)(83380400001)(4744005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?5EC0IlLE+3qqzZ4L364vo6n1ll34UMQz4f1dflgcAjTr2Y21csGh3WyAry?=
 =?iso-8859-1?Q?7Tqb0VkuSfu+5i0t9ntgdtVbEvp9GKWMYNOpLElWIc6BNL7lVMqfja88ZY?=
 =?iso-8859-1?Q?bzzaXawlmep5O1Hx9263ZLZ9AhidMHRFtn4PdtZH/D7OkB+dakDi+Iu8lR?=
 =?iso-8859-1?Q?AmWtCaid6V+slToWF6QXVqZ+ShvaR5/sioIKJxVtFpclLrgaPadRu+Ol5a?=
 =?iso-8859-1?Q?dRritInUPC6rGLxacgdXy81TwQA/8pnmgoKJsDAJo6vY6YlTkHn/ezwB6X?=
 =?iso-8859-1?Q?rgI/RJItnrJC/PISWYx6Vwkrl7pj9LynMMz0clYfNBw1T2EVSx+I050vDC?=
 =?iso-8859-1?Q?FMAJl+Kt+CZ8fiVfqFntm8R1aLfF1CO78KBHxN8f7dOV8g60samI4g1sc7?=
 =?iso-8859-1?Q?IMMGV2BecsVWnHWVi56mfF7Cbr4G803fesgDFUS3VKpiMXYdS6BTQpJ9wH?=
 =?iso-8859-1?Q?NcCKx+oxBTXthrWhlDvZECBghV1ItUugjtM9K8QvUSUZtGuYLSc3pecBhX?=
 =?iso-8859-1?Q?Bwx7wflslfV9zSq7cLg8VsyncwOZ5AI6z9wW8Ci/QOTe1bzuXFPlj2ZGLU?=
 =?iso-8859-1?Q?iUBsYiNRYljB6eaEsIr+2F+zjDkc8garqUowvZWzxzFpjysJx2tg6StxlF?=
 =?iso-8859-1?Q?uPzbrNliUaWTj0TV6I0LZQzYbdi7rmRfvt+OkKG88kBRhhj4hvVDBQFtp6?=
 =?iso-8859-1?Q?SXhEyoZlurGi9df8U69J5n6azJ0eiiX/ZOlPd3cMGg1XaM7MVzO8plSwGF?=
 =?iso-8859-1?Q?7g7WNz/9NSLNociZ0S7aadv1JJxuAVObqbray097vzs+R00JCAiYbcd5VR?=
 =?iso-8859-1?Q?q33U2g6UcOq0iZ/Ng3MjevYwclrDk9OO3TBjH8ZQ15hQkHwA0GgN5hvbLy?=
 =?iso-8859-1?Q?u8CLTT6gwuSiFOj6sgS++JqRen9zB0EnB5TbslsOe0GXutUYjdfnxU5vPb?=
 =?iso-8859-1?Q?VOQ5DII0YAh6hQv3JYRXfHrEJUIdgfWZxyuaiDmdkMl4+/BNotdnQkjDit?=
 =?iso-8859-1?Q?gif7MqwtbEeSmaMzGzXT5E2lD7qPXfHXAS74OJA75HtCXLkhi2tDA7xAVi?=
 =?iso-8859-1?Q?BDlEpGA8hJNt5Ciot6Kdl0pEeT+5wzLMQJPxWv6uMk8Os7WpnUS38Km7qG?=
 =?iso-8859-1?Q?DWfQBvNJUipZUyE4N7rvJFh8VE6+VxA+4ubcuKIoFFlYu2Bl0GKg51MIcA?=
 =?iso-8859-1?Q?buW5vvQBe5qC63Y+oi8vnMWoq0JNaRxN6MesFwvfCFvCau0mOW+tlc9+hj?=
 =?iso-8859-1?Q?3GCq1meeo+p9q4rEANcDL1WqIu3O6t2XQQEFjEjYkzsTh5mzulizGQsPML?=
 =?iso-8859-1?Q?w7ZbRGMavg/0UPnVfRLFZY8zAIG75TObWxRCsZ+a/3eL7fhZZySnwgGuPY?=
 =?iso-8859-1?Q?aU0JUXabEwWUTezAoq+1nKRvYYn05GSi1OVAyYh5mo8Nb2b1bWpRVNIdJ6?=
 =?iso-8859-1?Q?p2pUQMIV57mZ3xxPfO2Uyg5BWDihH6krujwIMn0mnKVCb5ubLHmWvTWerJ?=
 =?iso-8859-1?Q?nniQ9YJKrjH6uQqW0fUQH5toX7dyUfYV3ho55scTJwlLcJPW1CqCf6hwsa?=
 =?iso-8859-1?Q?p0hqArYkIE2N2s1N31p6YUtmrkQWXLvNGnEU47mdwiCFXYu61KfPqvQBdh?=
 =?iso-8859-1?Q?2y9j3uQtm/O6E5jDW2Sn+m4dmJ6pzRj7zt?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8369.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e39d41-42ee-4098-9316-08dbbf677c35
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 14:38:58.8878
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HVAlm/kSKJgn6sGysmUDTIflqJ6ldugk/cXwzThsD0jPQEpqSloe7MdMA+p/qFU/KDeOpRegTgoQdWDAu9LdaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7496
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It should be smartpqi: add module parameter disable_managed_interrupts.=0A=
=0A=
=0A=
This module parameter allows users to disable automatic irq affinity settin=
g by turning off=0A=
the PCI_IRQ_AFFINITY flag when requesting interrupts.=0A=
=0A=
When the flag PCI_IRQ_AFFINITY is set, users cannot change the interrupt af=
finity through /proc/irq/<irq#>/*affinity*=0A=
=0A=
Some customers would like to change interrupt affinity based on their requi=
rements.=0A=
=0A=
=0A=
So, I can update this description myself and resend.=0A=
Thanks for your review.=0A=
=0A=
=0A=
=0A=
=0A=
From:=A0Alejandro Colomar <alx@kernel.org>=0A=
Sent:=A0Tuesday, September 26, 2023 6:50 PM=0A=
To:=A0Don Brace - C33706 <Don.Brace@microchip.com>=0A=
Cc:=A0mtk.manpages@gmail.com <mtk.manpages@gmail.com>; linux-man@vger.kerne=
l.org <linux-man@vger.kernel.org>=0A=
Subject:=A0Re: [PATCH v3 03/10] smartpqi: add-module parameter disable_mana=
ged_interrupts=0A=
=A0=0A=
EXTERNAL EMAIL: Do not click links or open attachments unless you know the =
content is safe=
