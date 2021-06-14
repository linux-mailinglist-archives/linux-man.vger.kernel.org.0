Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A322C3A5E9C
	for <lists+linux-man@lfdr.de>; Mon, 14 Jun 2021 10:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232653AbhFNIxn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Jun 2021 04:53:43 -0400
Received: from mail-bn8nam11on2110.outbound.protection.outlook.com ([40.107.236.110]:10688
        "EHLO NAM11-BN8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232528AbhFNIxl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 14 Jun 2021 04:53:41 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MdMeY7ObmZkK2qrdMMoSg+i+eDmZ1KLorxL7SpUnSqnppBr1lNt0YUgYKD+rdNtsCbGL58l7Y+gk2BaTuSUoKZGd5fXx5j+InaOu3sI84OK8zeqbDPaZ/FDlB+qgZd8XrEeoiV79BfTd2xTmmp+VnVi/qbXtcX7XYTGD+3gKwzNaQ8Ci2fLtskL6w7wlhFEU6cNgEt++j793Cs7ix4sn37SPQm9McaDnTapVJsOd3imi5KTDcOYNvRPD3tpCpd76eKo9KiVOJ6kWWnaMozq4/2iBzDfEG3TpAkK1h3JDPEpteoprsXKUGSKngOhTk4de92yJ+pOieTEd6Ubz3kY9tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOTtipDe4Orw/iRX5ap9UGHe8FBRRB2pT4NsGnebjxE=;
 b=GP3ZrB/veGSub8c0nYWn5OT7zZnOnfZ1K9jxrbdGbUP7mP8VzvOH+hqudWA0PIEs1mNj5DjrLDXZEShRo5nHIrPslFrL3qcSGXULKskFac2Llb80C2iizLKGjbROSNbzvw/XGFPFqveSXhXmNujn6bpr9MwQUxwoUvq/QneVa2v/mGSsjglDTFsC1G/Paa0mzBUJx5tNG0r5P9qfqfoade3sfmiuv4a8KkmYPVtqB8C7aoEYJBfDkfe93CT/cSGWCBSmsBjz73E2FqEiLP6G6sIq3ExQPOn9kCxtBPkeeOQnLuQWs3K93RnZZD3LpjIbPcKsUBg9D/S7byg2bhPUyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=helpsystems.com; dmarc=pass action=none
 header.from=helpsystems.com; dkim=pass header.d=helpsystems.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helpsystems.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOTtipDe4Orw/iRX5ap9UGHe8FBRRB2pT4NsGnebjxE=;
 b=R8ZetiKzifK4K2Y/EFpTuDuj7zsUaPYWMtIfn/35zU5BHvDK5PCexaFP72n23pbhhQXjYyVsBfI0MswPiHYZ/Ua6HBjd7UWcKqMkbl/dVkfzvUqHNgpp8Br2ayjeYuxT1wTjLFw9OB9E6FnwPipADbhiUFB0zUb+AcH4rAPZ4RE=
Received: from SN6PR08MB4928.namprd08.prod.outlook.com (2603:10b6:805:6b::32)
 by SN6PR08MB5087.namprd08.prod.outlook.com (2603:10b6:805:73::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.25; Mon, 14 Jun
 2021 08:51:36 +0000
Received: from SN6PR08MB4928.namprd08.prod.outlook.com
 ([fe80::dd96:1caf:9d83:20ce]) by SN6PR08MB4928.namprd08.prod.outlook.com
 ([fe80::dd96:1caf:9d83:20ce%6]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 08:51:36 +0000
From:   Alan Peakall <Alan.Peakall@helpsystems.com>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: man-pages: posixoptions(7)
Thread-Topic: man-pages: posixoptions(7)
Thread-Index: Addg+NE0d4d5WDpjR1OcWlLC7uCoYw==
Date:   Mon, 14 Jun 2021 08:51:36 +0000
Message-ID: <SN6PR08MB49282117AFEB2499B3DD224380319@SN6PR08MB4928.namprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=helpsystems.com;
x-originating-ip: [86.191.111.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbb5f8d6-cb5e-4583-8409-08d92f119e08
x-ms-traffictypediagnostic: SN6PR08MB5087:
x-microsoft-antispam-prvs: <SN6PR08MB5087F1A3BF2A63745282F49780319@SN6PR08MB5087.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YpVwejaA3M3KgVrSWj18mTqpoYjpe32Gjt728QU9bfXQcSFRbK735Zo3P6DUcd8gGv5UyZCtzwOtRHXjSDLomJrn9EZkOE2vttmwd80ENoGVfydbhO4BCtXajoJJZNR8ek/50GFqpL7KvymbVjxSSiO0k+GupVw+brfwB1ryzAovN//TQe8nfKtDWWcl4pHelaGFYodmaZ3Yl4MxwXw4U6b17l7O6hiE9oheSIsD8P0WBey1LF5/7m79DrKupz7TMSQTQpR8i3nzrYBEogsJURPeoPprC7IfJ19cpJSbDseFI+wXwsCNqU5hnsc8idSceEXwdrM8KXXRkX0EiRJwpvHhXR6B4gunZhHwOMXwjT8TIzFo+etzF9I9zayWb78Yv2JgMwjsEot8V4ZtUAmWX5aQbrq09zSEhUt1V1gkRxBeB4UYaKaNSeY8g08IGjJW71SyXi0MDlaw8FIoMP5IAX8DxYTOm7hDEoIYzZq56etY95mco5zLyhRXdKMMNs63HTgRk/SjpHPp0QoJ5F19DJC9405DoqKhaGIuXhRgoGib5+D0+xNoFwBEwtd658PXtkDsMa4vU0u6lA6GQibIrFFWfMpsSspRr4HxpUf++wadgWrbQNzkOxDINaOKQNtxMLGcu+Q3ZH19UIu/1k/r8I6b6lP8h82vbciUkqy33ZMKZNjnnWOrVnjtHJ6oKBSnMBIt36xXh6wN4W992VF4xa23sDNGzjlgRoTk1AiPMqI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR08MB4928.namprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(366004)(396003)(346002)(39850400004)(33656002)(15974865002)(7696005)(38100700002)(122000001)(86362001)(8676002)(186003)(71200400001)(6506007)(478600001)(4326008)(26005)(8936002)(83380400001)(64756008)(66556008)(66476007)(66446008)(2906002)(9686003)(55016002)(5660300002)(110136005)(316002)(76116006)(4744005)(66946007)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8h6NEym649ST6YCsN3sghtRg61YW1Za4IFBW665TZRcdx/L+yMKVnxJ0Vb4y?=
 =?us-ascii?Q?9fgUngrSkEM34zplHV5gr1eY8y5IQ1gOxz+L1rDxLFWNRAZRxG/tW7CSi70A?=
 =?us-ascii?Q?qtROVjgpvNvThKr3wLedZYXJSTGzkkRBWVa3rSWhRKD2i/ocCOb+8CwIYvoB?=
 =?us-ascii?Q?FBe6TSiMzf30mGwT84/+RI21b15AzNyEk4J/WJ8ziunRdSYO/GySFllxkH/E?=
 =?us-ascii?Q?iVTcTUIs0MtorRRvmpsYtCWul8ofDDOm6YJNRUJWCGAR9ouIYJrlmlgK6ol0?=
 =?us-ascii?Q?M1o1SVKDdZUVmsGpXsKPHro82eJcL8UACesdMo7Fm5cJ2yYa7PX29Qo0WiVq?=
 =?us-ascii?Q?R1ydPkJ7tKSk/rLG32i8ZTdELhKncm3oFDsbclGlcxlpDQ/CEdADL3oVBXlP?=
 =?us-ascii?Q?dMPAeEy8Bb/fL0Cm5mSucQraVz/KpeCADgPlpHWJLpzcCCZBK84iPx+fGi10?=
 =?us-ascii?Q?1ZjkmhgLFaeV3C0e7gxXHdwSiFr0Du+ySZaWS/p6NRGj4c/gCHIh9VHRYzLd?=
 =?us-ascii?Q?aT1xSqOBO8FHEG7+dGYzKc2kTiV8aTG4ytSHiZEVpaWIfK2ChMzA+Xf6pXsd?=
 =?us-ascii?Q?p0WQMp7za3v0ia9J49lgoi44xn0m0v96f3FJ207z39rwFqu2hWeUf/LkLK4a?=
 =?us-ascii?Q?dRLjYSMfkMU9MRzLm+GWzH+6RRfs8/t4JILRNetWk6dp7qpIFYQ7zjV3rNRc?=
 =?us-ascii?Q?oMlGUQpLWhWGnM732lMDUcgMMSlNBvgXECTkN6cWEguXUnaW/BsU23UCkyGk?=
 =?us-ascii?Q?Lam4HwUSKG5lh9woSVX9Ifvv+yy1VKTnaUVAV06t160ckyDVykNdyFPjo9jb?=
 =?us-ascii?Q?v6GAzEXShIm6KErgRtLfh4qkrJ8M+sKP9B64/0gnCUtFZcX6wYbn6iZwzxCM?=
 =?us-ascii?Q?ruDlRUbI1pZBNcrHXWz+K4v0rRuh6lOjFpB7rOK3Zmh/P0CY2sg6/cEdpMvM?=
 =?us-ascii?Q?YDC8ojFJtntDv0t14hTgMlWH4LJW4Tl3FnRAEtWFJSi8nQxHLWtI+eLTRmt+?=
 =?us-ascii?Q?AofzL1iFqceoyZ7MWYlpWq4uhaptFf1S9wfCbd6oWr2XZE22UpSC/PwvKjOk?=
 =?us-ascii?Q?MxyIAs6Zpy2oKAc85K/KBIMQVy79u2JKZ/W+RA5NH5VZFqHJMGSyk5KoeBwd?=
 =?us-ascii?Q?lpH3WGJuLHP0ifHqM91yuYt66eHET2YKQ5hWt4ZAqw05YgTw25wxLDmdNrM4?=
 =?us-ascii?Q?rb4rpNBzUt8sew8EuC6rA5uAl0aZzyRg059Y2UhyboT8r/hLqpv9/tnS9tRx?=
 =?us-ascii?Q?nRTYsuMtllWDG0Ma4y9K7Yo6JK5QFrxKU0RJhcu1Y0hedgez2RgIDYN16MdX?=
 =?us-ascii?Q?FnUXjzMHrlM1syALE+bV/zCq?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: helpsystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR08MB4928.namprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb5f8d6-cb5e-4583-8409-08d92f119e08
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 08:51:36.0454
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca81e23b-3509-45ee-a998-3e346acf274d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8O8kcjEIns0OFXVGDVfDxbW/VRKMrSZGrQOO/aL8q+oFoflwjUdelvoN+NEscXvMiGIzqbwCYkJ0/HO2vblnAjXel1PDNmhR88Z3wUPGtAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR08MB5087
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The on-line copy of the manual page "posixoptions(7)" dated 2018-04-30 has =
an entry for "getcwd()" in the section headed "XSI - _XOPEN_LEGACY - _SC_XO=
PEN_LEGACY".
I believe that entry should be "getwd()" as that is the API call which was =
present in X/Open-6 but withdrawn in X/Open-7.

Regards - Alan

Alan Peakall
Senior Software Engineer
e. alan.peakall@helpsystems.com
p. 44 (0)1252 618006
w. www.helpsystems.com=20

Northern European Headquarters: Sentinel House, Building B, Harvest Crescen=
t, Fleet, Hampshire GU51 2UZ

Help/Systems International Limited. Registered in England and Wales. Regist=
ered number: 4172068.
Registered Office: 3rd Floor 1 Ashley Road, Altrincham, Cheshire, United Ki=
ngdom, WA14 2DT



