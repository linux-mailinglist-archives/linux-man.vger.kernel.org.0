Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76E757B587B
	for <lists+linux-man@lfdr.de>; Mon,  2 Oct 2023 18:57:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237923AbjJBQdY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 12:33:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbjJBQdX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 12:33:23 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D3E9B
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 09:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696264400; x=1727800400;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=zkv99SMNvDmsMarGHHqbojQibJu+HNxpq1tdqSEQ12M=;
  b=L+MpVBI7me/XmKyuLOaK2uQEP11GXxoaVO+UUyLlceSx9WRHRlXTDDbt
   5HV/E+OMdsMUiVRaWRdw+2ZbMnSPBg+6xNQLxnbKQufBt1oObOIh+QYGa
   9Dr8Y55Qjtk7Gqb5uhbMBFmIsFRVxUWca32U1NEsOBhd5V5EHXOE9c0GX
   x0A98amM+8Mvcvte3Zr5ZmKu4cfamki8UgceocbU0uZESqEJ4yLttFUPY
   r5eF1TepcgUYWcry7ptHTFe1FmiN2C4IuNUNxAz9QBRL635zR1k3aNyyz
   pDdpD3G0HIz4d9o8vSyhrIE2TOvQx3c/6t97HSM2sFT7tPDq0JeZ7FmTt
   w==;
X-CSE-ConnectionGUID: MuMQNEl3TIWgoPyFp2l4qg==
X-CSE-MsgGUID: HKYussEeR+yEbzr6a88InA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="7542046"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 Oct 2023 09:33:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 2 Oct 2023 09:32:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 2 Oct 2023 09:32:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EFsfxTiG+ZPfsiEMP9K8od6HSXZv6LRPqdZrTstC2FJaY0Yo7UfA8OQ4CLS85KhORRicOTgtu8xVhVbjEzB9Bx460RRq9L7t9Lh1snptgTsTuxI2cIEWDvwtEpo0wnMmBfMkYkWl1vgnNjiBMV/7HLkAZzHv8GAVy2uXvxL+OUhWyGtbmxc8Trh7qnI5MV1304vHsPHAlTc/KqjVrgIh6MdIjbaXNyQysxu5PHB39f2CYbHdmIwPTIKFDMuYOEjj2I7UXvRdtbSrzNbZNEwfmU+xGRKWmPYOc9/8i2v5Jlk3Byc6sexW4eaXGCP4uRjCYR81zB89t+1xYBPQngYFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zkv99SMNvDmsMarGHHqbojQibJu+HNxpq1tdqSEQ12M=;
 b=YrIYamQSOi4Zyzv9GfY2I6piSJJGe8VGFnnfniRfQpx6T732XVgSXnlvSUWSjuu+oqJMx6TCLSuedJ+GO+5z71cUu7MUTeSS6s2kqT9vj4FYSY/7oQOVfwj+nSYM/OKYt+VUrZ3B7S2vQKxKQQVedrLGhd9SACDc7AjfwZWMy/WqPW7vovm/M/hSSZ/sA+ztoqkv6AZO1LPa69e703p5/BzdNOaEj1DIFmB9KxODF7HkrmhN9Ep4QBRkc9pc4/tOhDNDV6sI5Qj+lw6wTm4gd6LfXqTC3AD5q46wnjJ3tk6nosqas46+bBDhgoADs8V2zX93pe4KjEw20u9xyUySug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkv99SMNvDmsMarGHHqbojQibJu+HNxpq1tdqSEQ12M=;
 b=ahwFszcKIuz7xv0KnFikqpA11g2vDugtUPP4btaZr0+OPxi0t4hXcf4bKL+V0HTUEW3SULtwS35Cc+OxFvN48FIjs073NKx5FTscAMGsNh58HMbs86bzLjXDbGMnbaOY/2qwkbng+O5hSJ+XWxkEhueUz11cz26T2QZ7moEaSqQ=
Received: from SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 by PH8PR11MB6705.namprd11.prod.outlook.com (2603:10b6:510:1c4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Mon, 2 Oct
 2023 16:32:39 +0000
Received: from SJ2PR11MB8369.namprd11.prod.outlook.com
 ([fe80::8392:9ff5:9dba:cde1]) by SJ2PR11MB8369.namprd11.prod.outlook.com
 ([fe80::8392:9ff5:9dba:cde1%5]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 16:32:38 +0000
From:   <Don.Brace@microchip.com>
To:     <alx@kernel.org>
CC:     <mtk.manpages@gmail.com>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH v3 06/10] smartpqi: update host attribute descriptions
Thread-Topic: [PATCH v3 06/10] smartpqi: update host attribute descriptions
Thread-Index: AQHZ8K2/4Y/cAMuLYUyq0Gxv1FXsN7AycvKAgARF0YE=
Date:   Mon, 2 Oct 2023 16:32:38 +0000
Message-ID: <SJ2PR11MB8369B169CE2E17E9AC65F847E1C5A@SJ2PR11MB8369.namprd11.prod.outlook.com>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-7-don.brace@microchip.com>
 <ss7k5ooeoi7y56j6otvdpwhgd5yltzk6nt5l6ujiiupxzpmrdx@zrcvhw364ejx>
In-Reply-To: <ss7k5ooeoi7y56j6otvdpwhgd5yltzk6nt5l6ujiiupxzpmrdx@zrcvhw364ejx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8369:EE_|PH8PR11MB6705:EE_
x-ms-office365-filtering-correlation-id: 72ec449a-2628-4823-9f46-08dbc365314a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ERAhQ0JcmkXfgKKPZKmY8CaGTGdMtB9sJTfmELASJkxoP3WYem7aECGmFGPibBYOyvDyRmBc2ioT9L8aBF8UOQH6omTOyN3ZMq/fOD0lyusoLVHHTr1n/RNhyonk+AXjJ88NJ0dXm9xMFc/o7k+3deejAH9T27vAEroM6kbRUuRPV7DX2k5zFTeOHeN4Rzl+BTwB5O8gMng3eVaFsjqolEa5eiIXQS0sZPQ4x6IbbK1MRTRFM1JHP0D0HNtsGIBdxJ0LVllmwNELilSvUFH/OxToNhdub9gHi3FV1i+m+Kk6no58WJBHSzn9mHLEUK/6iWYdYOJXEGxCeA5MUnA7621kSs0qLNHb7baIswHHPCjWOfg7yfD4YYts5JTfReBESPiCWd1QBV4vpkm+S7LK1xIxHukFugd6tpEzGCsPQqd6o7zTA40zGsiEUiEiijRLDQcikhw6LUomVyYYunFmsCNjqaBGJ7Sjk/4fo+YsWzyrnZc9FGCxvPh3+E7rpjYHu++C1MU6J776TW9dea9MC3NmGDinrtcTWHdLZh2ozfxIEL9ClElwFORAUh4U9bOljSQDQ98daGiCvwB5Z72hLnRRvK7gKiZhtfMeBm05WsEdGuoYDbKjqYr+4Ee6qmab
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR11MB8369.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2906002)(15650500001)(316002)(52536014)(41300700001)(8936002)(53546011)(4326008)(54906003)(8676002)(55016003)(91956017)(5660300002)(76116006)(66556008)(6916009)(66946007)(33656002)(86362001)(478600001)(6506007)(9686003)(71200400001)(38070700005)(38100700002)(66446008)(122000001)(83380400001)(7696005)(64756008)(26005)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?MeaCBNn3g62P5IgvzMbgn2PAsWJR5Am9J/5pZBoiJKykKna47HKCkDxmej?=
 =?iso-8859-1?Q?5yke5KD8/nWUlFG/KxtgdzEZEy3cKKSCBfeH0qLeut+kS1VWxa5vuuPPIg?=
 =?iso-8859-1?Q?/cQ/AxnhBGjQJyAcW4aoTtt8RkrG2Yy2ohakRCeNUhEQLVwCEeEUy1XIyq?=
 =?iso-8859-1?Q?yl83pZVfQ78KHUPn5KKDZa7Jx45q6MMC4Z5B3BWHvxFS49SXfodZ2h/8ck?=
 =?iso-8859-1?Q?KPu2wXPzCFN2su86SHpGVVM+03u6ETaExXME18b/ffAAVX/ttYX1RnNGRD?=
 =?iso-8859-1?Q?PCuXCbZ69PEmDMrPPB2h5RjSPkbBkx8BlIppUBDonxmb3tdArffQQyhBI7?=
 =?iso-8859-1?Q?HXAopoE+2WZRuoIaj/Nqa921qryEGHqEScwBtwMpYvBdtw8ICuXWnm7Q90?=
 =?iso-8859-1?Q?xA289DwlkhpK5nay+Fsr29/PiTXKLUlKu0OAC35S22hdscPnCKc/fRbCQh?=
 =?iso-8859-1?Q?it36PwGWJQ22FSRale/Oke0LAGHArREIxdc0VR1tY82kmZsVQulGPk4FAm?=
 =?iso-8859-1?Q?iZcljSPiPYwiiOO0/3g3lYiFP2COgTJWb0o2zYVIw8uv93vNqsYBWFmV8o?=
 =?iso-8859-1?Q?1gMuI9hnpIGYMaQITjjQlFLl4kmu0lJUtbDLxYqX9GDjdxMdoYsddfD/bG?=
 =?iso-8859-1?Q?tfAB3lLF4ykuyuHyP8DjRj6/XGj6pgYGKMGcW5YrmnYpf3GKILj7yPxEJy?=
 =?iso-8859-1?Q?Gr8IzMfNd6T4ODtSwmliTO9K5UQA1gASD0mZXdvV+nMMF9vbvm2OXYopSr?=
 =?iso-8859-1?Q?hSbyXkFtNUAkqdXKkXcM/vYxZuIrBTUvQScTLnqDlkxjUnTdZ1g3k6Li/0?=
 =?iso-8859-1?Q?2IzR7n/2w2HdKJAlPn/3vdikYIWwo0Gp3Pzxxl3AiILkoMmRHS7e2gMaed?=
 =?iso-8859-1?Q?O3OSQ5PYltQl7fMFYDXu79P1Q8FZRBlOwr7d0SUCXwnBO1dFZ0g3sVQ+Xg?=
 =?iso-8859-1?Q?FAVzxpMOq48v+m1jiBvjiB4T18MhO6lLHjzyhw9dJKifOeLnIG3k0AaGpb?=
 =?iso-8859-1?Q?NQZvNJznkcmgyE95A8mzLRkJMPc7cywKj61jYZ2aOyB4FoLo30k1aLShCu?=
 =?iso-8859-1?Q?tugBIyyNqwUn/quiR2TI0E2FYG+6mr/vZ38HWjUTmt7MAjzgivFpZQG9wh?=
 =?iso-8859-1?Q?i++SppD8yVFui65y74uwKAbc3k/hIUvil09WMHtIdVBpNB6LmRhmn1Mw/Z?=
 =?iso-8859-1?Q?k0LWsk53dmVbVzort+w8urTWhmOU1rSKExGDhjRwfZsmKqrjJs4ABjqrMG?=
 =?iso-8859-1?Q?06kVn2VMtF46bG+/NgeJ0aorC+golxS102MlZjADhbm0DJNvXda8ln+7j2?=
 =?iso-8859-1?Q?GxniEOGUYeAAolFm0GunkDAMBardy/VCJH5R5XZXfIXhWihr1SHbHHvmqd?=
 =?iso-8859-1?Q?GTRLY2CdGCSpUizq1g92EPf1G+ISFdg7DsDhiQx/3OHOZiAniCmqAxTHfr?=
 =?iso-8859-1?Q?Ja5ZSTX6DTOYRtpWjkPEqQ0OWjoT3suKjRYFPEgaifsxwyEBBtMiGJfJCZ?=
 =?iso-8859-1?Q?0BF1lf6RxWySQ/4MoMk+igMmyNELL99slWaBhRt7LWF98MOaPhW7+auZ4k?=
 =?iso-8859-1?Q?KfUmm+HFDh7uZpGQdtv6WZfQrW6KFNE2CzkSM37tZtM8q4KtdSbsv4YGP8?=
 =?iso-8859-1?Q?b5wmrHrOv/52WlNjdbTG8qZKtR5uz2yCne?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8369.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72ec449a-2628-4823-9f46-08dbc365314a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2023 16:32:38.8907
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yLGRK2k94HOO5Nzvc2d37RUOzOe2orjsSSDqLC7axZbtPD6Uk0I1orDxIU8pG6FSZ22oYMG5yXXJ2G4sok/PJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6705
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>=A0 attribute is a write-only attribute.=0A=
=0A=
>=A0 Writing to this attribute will cause the driver to scan for new,=0A=
=0A=
>=A0 changed, or removed devices (e.g., hot-plugged tape drives, or newly=
=0A=
=0A=
> -configured or deleted logical drives) and notify the SCSI mid-layer of=
=0A=
=0A=
> +configured or deleted logical volumes) and notify the SCSI mid-layer of=
=0A=
=0A=
>=A0 any changes detected.=0A=
=0A=
>=A0 Usually this action is triggered automatically by configuration=0A=
=0A=
>=A0 changes, so the user should not normally have to write to this file.=
=0A=
=0A=
>=A0 Doing so may be useful when hot-plugging devices such as tape drives o=
r=0A=
=0A=
> -entire storage boxes containing pre-configured logical drives.=0A=
=0A=
> -.TP=0A=
=0A=
> -.IR /sys/class/scsi_host/host * /version=0A=
=0A=
> -The host=0A=
=0A=
> -.I version=0A=
=0A=
> -attribute is a read-only attribute.=0A=
=0A=
> -This attribute contains the driver version and the controller firmware=
=0A=
=0A=
> -version.=0A=
=0A=
> -.IP=0A=
=0A=
> -For example:=0A=
=0A=
> -.IP=0A=
=0A=
> -.in +4n=0A=
=0A=
> -.EX=0A=
=0A=
> -$ \c=0A=
=0A=
> -.B cat /sys/class/scsi_host/host1/version=0A=
=0A=
> -driver: 1.1.2\-126=0A=
=0A=
> -firmware: 1.29\-112=0A=
=0A=
> -.EE=0A=
=0A=
> +entire storage boxes containing pre-configured logical volumes.=0A=
=0A=
>=A0 .in=0A=
=0A=
>=A0 .TP=0A=
=0A=
>=A0 .IR /sys/class/scsi_host/host * /lockup_action=0A=
=0A=
> @@ -173,7 +156,7 @@ for an explanation of the=0A=
=0A=
>=A0 .I lockup_action=0A=
=0A=
>=A0 values.=0A=
=0A=
>=A0 .TP=0A=
=0A=
> -.I /sys/class/scsi_host/host*/driver_version=0A=
=0A=
> +.IR /sys/class/scsi_host/host*/driver_version=0A=
=0A=
=0A=
=0A=
This is wrong.=A0 Why would you want this change?=0A=
=0A=
=0A=
Thanks,=0A=
=0A=
Alex=0A=
--------=0A=
=0A=
Could you clarify? Do you mean the last HUNK about driver_version?=0A=
Of the content above?=0A=
=0A=
Also, I have rebased and applied your review input to the other patches.=0A=
=0A=
Thanks,=0A=
Don Brace=0A=
=0A=
=0A=
=0A=
=0A=
From:=A0Alejandro Colomar <alx@kernel.org>=0A=
Sent:=A0Friday, September 29, 2023 6:10 PM=0A=
To:=A0Don Brace - C33706 <Don.Brace@microchip.com>=0A=
Cc:=A0mtk.manpages@gmail.com <mtk.manpages@gmail.com>; linux-man@vger.kerne=
l.org <linux-man@vger.kernel.org>=0A=
Subject:=A0Re: [PATCH v3 06/10] smartpqi: update host attribute description=
s=0A=
=A0=0A=
EXTERNAL EMAIL: Do not click links or open attachments unless you know the =
content is safe=
