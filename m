Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66EF1F17A1
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 13:23:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729610AbgFHLXP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 07:23:15 -0400
Received: from plockton.cent.gla.ac.uk ([130.209.16.75]:58632 "EHLO
        plockton.cent.gla.ac.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729398AbgFHLWj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 07:22:39 -0400
Received: from cas08.campus.gla.ac.uk ([130.209.14.165])
        by plockton.cent.gla.ac.uk with esmtp (Exim 4.72)
        (envelope-from <John.W.Marshall@glasgow.ac.uk>)
        id 1jiFpN-0000I7-Ml; Mon, 08 Jun 2020 12:20:29 +0100
Received: from cas07.campus.gla.ac.uk (130.209.14.164) by
 cas08.campus.gla.ac.uk (130.209.14.165) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 8 Jun 2020 12:20:29 +0100
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (104.47.21.51) by
 cas07.campus.gla.ac.uk (130.209.14.164) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Mon, 8 Jun 2020 12:20:29 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jitWxTKuuUMMWmPHE9sEFQIw9uxkzOQ3aCvECaUOYsOsXA9uNN0PGsi4ytd6ahJT4VKWg+pDhoGEruNptImxYTOvDPaG7ZHGDB7PbnSyljhM7lb8k+9L/ddKLkok+4qHsmsv+24hLBRjnrsl3qamDq8LWI6je2C8MfVF3WAnX01TYSREn/BWrkmIQx2R7hQzf+F4hoUd9aICpawzB4UI/4+KNoPF272I1SXLXYZeY46f+jqNrXOswh5Cq69rP+4TYIr7kn30WHBqJlWcLJceDyfeCzUc8/0JllFRiUZlNt6fUxxLnxrhFmFA98H2QKtOr3svEhpRSOV+ErlhXtghAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vqGnGve1W4XXQCXtuPLbwe+T64wp8/4FETbl01VJ8iY=;
 b=Hf13mb9tfCALzHHQ+HzHmsNX3lt1ew7X60yt6+SN0UZOmjOeyxUb80erGdEJ3+aLoENuKtyYDJqzI7UDdoMqLIo054QyvS/2YQhGeCXxMS99odZpBFyB71BqlsGPb57J/vHqHn6+OcjhloFfTmUkMVY8iTJ5yQ+tDHdCsq1QnrwlonU+nJeYVRVoy++mJR6xjmx6Vvp85x0jnxZY2efXzY2O7VbGsgt+yb5QJm5dlYIq2VtvVkFA1ILidB708w6EDqWlp+zXAUcF0wE4ZTz464vRvUGeggU/MACOFAG8Jk5u2BZlpPYb8i/3Gsxlmtnu0yorFhRrT8Hm3kkfv3PzjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=glasgow.ac.uk; dmarc=pass action=none
 header.from=glasgow.ac.uk; dkim=pass header.d=glasgow.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gla.onmicrosoft.com;
 s=selector2-gla-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vqGnGve1W4XXQCXtuPLbwe+T64wp8/4FETbl01VJ8iY=;
 b=WhXi4DxPY2QP6a6TzXJ7TbxUYgiyox9kWzPNxV+SAqTw4E6LqKym75+0EXRrPsmFw3jh+Da6lyZ9uUoscsQgTH7OMcECGTwriTjvKL/Tk3wLAQYB3EmbdUkRwRDgyfzDcu2NW2JbX8ghS2LqyD6aNGl/bYziLE4Es2Ofr6Yq2Ow=
Received: from LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:84::12)
 by LNXP265MB1433.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:83::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.22; Mon, 8 Jun
 2020 11:20:28 +0000
Received: from LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM
 ([fe80::edbd:dbdc:b744:15da]) by LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM
 ([fe80::edbd:dbdc:b744:15da%7]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 11:20:28 +0000
From:   John Marshall <John.W.Marshall@glasgow.ac.uk>
To:     Walter Harms <wharms@bfs.de>
CC:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [patch] random.3: wfix: RAND_MAX is for rand(3)
Thread-Topic: [patch] random.3: wfix: RAND_MAX is for rand(3)
Thread-Index: AQHWPYV4384Yv9ofekO5IS3dOOFvNKjOkpSA
Date:   Mon, 8 Jun 2020 11:20:28 +0000
Message-ID: <4839AA38-D07E-44E3-84C5-B8D8EDF091B8@glasgow.ac.uk>
References: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
 <627c601ec03b4da9b1ce98ee0e61a6ba@bfs.de>
 <20200608110416.GA21314@Johns-MacBook-Pro.local>
 <f653054ab6ae480b8286386c432cf8b9@bfs.de>
In-Reply-To: <f653054ab6ae480b8286386c432cf8b9@bfs.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bfs.de; dkim=none (message not signed)
 header.d=none;bfs.de; dmarc=none action=none header.from=glasgow.ac.uk;
x-originating-ip: [86.178.96.176]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86143e9b-f457-4fd7-7f2c-08d80b9df300
x-ms-traffictypediagnostic: LNXP265MB1433:
x-microsoft-antispam-prvs: <LNXP265MB1433D5E97CB3DC5B0984D737F0850@LNXP265MB1433.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 042857DBB5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qYmtu6uN6NPKKq8ZJpF66swx3FUnZ+FA/0OS2aZvRd868JPlaiZXE/jxKAYNCI4ehK0sYxabZPdj6VQFfnPA+jeQMkglGx3nc8//3o21M3RlJnM4cIIxMaJ+rCFj7Rj0p7W6ZcBO9XEbhqvSKVT4Gev3G7Jg0cB6tqNqUhMCA+bcrH4EH4+lKiBmRexsViKV9tU3K2XZFgzrQTSxbydx/daZa5ja9C4mf9MR7i8jEBXzWcLQGKSTbwxiRfNtjZc2pi7XTRYq5EotBzAJmM2yoz5DdHePPmTETMoEuAXVQErTmxtrJZLjhcE6BGooEAmvBkPu4NTpjPVYJSNde6mKCzTuMtI96rLJx9rNfPbvuKylR0enHUIkaNyPpRvdM7Q4oG1m6+D6kl94jFEQU4JuQA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(39860400002)(396003)(136003)(346002)(366004)(376002)(71200400001)(26005)(66946007)(36756003)(6486002)(6512007)(8936002)(66446008)(64756008)(6916009)(4326008)(66556008)(76116006)(6506007)(4744005)(8676002)(53546011)(66476007)(86362001)(33656002)(2906002)(186003)(966005)(316002)(786003)(54906003)(2616005)(5660300002)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: W93bae0yFEjH5PLxMHinxvRFACtp3uuQlJyLOJmQv/eVHBb+vivKpVfTWU8iPnGB7OZOpKB6YaKUXIa/UVyNL7qGN3XQgbOQb9/Ey902jd7n+ZJwBcAcsFDQNNyA6G26UWUW8J8QNF62+VwCxmP3tr+HCvwTL5LEo9Af4S+uUEHmEhkp+rXEWdsshdvsIRE9iudAbQzOKNopyOMyGdAyuYx6S9Ml5rUks+IL48Zmw5Pf3mxFrnMyRYZVT10hfNYaZagryzD7XjsUhVTlgqRqOnKU/EfqmCeJSTQo2951ohRkmSigDdDqZ4o+U6TZesi0+sy5P/LXMjJSGK6K6qBXQ4gxc8XgV+76cZ2RNkuBV6OJn8TT8jdmSEZFCxxZtn2/Y6GtP+C0/EKiO9LXx7ICT37GykcyM1ryRiKoEVG0AzMuocB+oHyNhRPOqWc1McgIaNY65OEoDh13v5MEPTb2GDgHBqG5dAjX1DBMXb+m1a4=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C846C2620A11124B875B23C93974B8D3@GBRP265.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 86143e9b-f457-4fd7-7f2c-08d80b9df300
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2020 11:20:28.6422
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e725c29-763a-4f50-81f2-2e254f0133c8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PBP3WRWre12xnWh/WhiYnTyHIGsfFK68ztGnXqrqnccDyLpmADxXXfjRSXBsfCaJMX0DvOpUHdQrioqY2MCqjtdDjvAmGgOIpzApyNuBXAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LNXP265MB1433
X-OriginatorOrg: glasgow.ac.uk
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8 Jun 2020, at 12:10, Walter Harms <wharms@bfs.de> wrote:
> just a nit pick:
> INT32_MAX  is not mentioned in the POSIX page, just drop it.

Indeed it is not (presumably because that POSIX text predates these stdint =
macros), but it is by definition the same -- on currently existent platform=
s that matter, and post-N2412 on all platforms [1]. So it's the maintainer'=
s choice whether mentioning it as a constant for code to use is useful.

    John

[1] http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2412.pdf=
