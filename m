Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3CB428259
	for <lists+linux-man@lfdr.de>; Sun, 10 Oct 2021 17:49:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232169AbhJJPvA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Oct 2021 11:51:00 -0400
Received: from mail-db8eur05on2104.outbound.protection.outlook.com ([40.107.20.104]:53345
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231842AbhJJPu7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 10 Oct 2021 11:50:59 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RBga4DI9HBArHmY+gFHnUTeMFWRQbFPBBUf0jzWtnN4VdwwulHiixFDvl/vIQHSXdVaQpIMH7axwBUFh+s+a1ixOQ0hLoK0k5NwOZhXDJu2wDWhgd06jQ+Lo3arD5TwR5EH1tB1uRHRTq3TdShYMK3cwa4/XB2SJufgv8PEH+kpaf0qgQCjYALF6RinWiOmwehkpgZU0QkV1XlvomvMWerwQIeSbfAEzlZ6qfcpclmEH54LJeozligX10+nBjckdmHb8jcWnoONTFOEGUJ/ZmeW6WYjwBEPRigPHCTabn+StFEzVYmzwkM3IQAe4clwla+P0YoPEv7q5Wjuqa68Zyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2c+Dibj//QsU6/yaFGCQAbzqyOodYDvIbd7fw0QScS4=;
 b=QJmXj8rhKOlw8paTQk+dB+72GgPvLxvW0oPNmBRV4k+BojPpsKAs2+cGaGC9/gPhYgD5qq07/ch7rpZR6+pOTQWnaeV7uDNNVE85CVRIJRIX/CBG1lntZi2W88ZnZ3zM3p5g3er2u63NfgAChgfyJ4wsvVokBCA6/1l8guu+NUUj/YRB/ofDISoTTjGEzSyIF/B9CA9+tZtWkMV1P0g927DgcMYuN2uw2HB3F0L7KlRgcrIhWVIeCEjHsvYwVOJICSsdL7tuDDLxVNMdgKOG62dr8CQMYnQ1kvahAWkds3BXXetfX9t6glZ99NLC+7o8U1CB9go5GBJ6ovY6Bh/SmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prospeo.com.pl; dmarc=pass action=none
 header.from=prospeo.com.pl; dkim=pass header.d=prospeo.com.pl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prospeo.com.pl;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2c+Dibj//QsU6/yaFGCQAbzqyOodYDvIbd7fw0QScS4=;
 b=plUOMAvuhUM2bjQHg3L2wgPakuD7FcPG5DuRDVVElZAD56h4jklEosM61aaRSydvphUeU4gsI0py66ZXqUW6yvEELAEifgTSXQw9EH5beclfu2vMXA97IrRPv54sIJfUHQypPfk1vLMOhrX7K2mhbLO2bcscyC6En7bLeZHBWCY=
Received: from DBAPR08MB5669.eurprd08.prod.outlook.com (2603:10a6:10:1ac::12)
 by DB8PR08MB4187.eurprd08.prod.outlook.com (2603:10a6:10:a5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.22; Sun, 10 Oct
 2021 15:48:59 +0000
Received: from DBAPR08MB5669.eurprd08.prod.outlook.com
 ([fe80::35e1:10b1:ae96:bbcc]) by DBAPR08MB5669.eurprd08.prod.outlook.com
 ([fe80::35e1:10b1:ae96:bbcc%4]) with mapi id 15.20.4587.025; Sun, 10 Oct 2021
 15:48:58 +0000
From:   =?iso-8859-2?Q?Krzysztof_=AFelechowski?= 
        <krzysztof.zelechowski@prospeo.com.pl>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Ingo Molnar <mingo@elte.hu>
Subject: [almost patch] elf(5): Add vDSO note Linux 4 0
Thread-Topic: [almost patch] elf(5): Add vDSO note Linux 4 0
Thread-Index: Ade96+3QNK//GVC0Q0+hLKbgrnTGyA==
Importance: high
X-Priority: 1
Date:   Sun, 10 Oct 2021 15:48:58 +0000
Message-ID: <DBAPR08MB5669BA425F5723A2FACA8335D7B49@DBAPR08MB5669.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=prospeo.com.pl;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae38a8a7-a2ca-4135-bf99-08d98c057941
x-ms-traffictypediagnostic: DB8PR08MB4187:
x-microsoft-antispam-prvs: <DB8PR08MB4187E4B60D98A5FFCEB026F2D7B49@DB8PR08MB4187.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3cwb23zMPIzlSFvR+cbrNp3EQlFg/slmQ/rYIeNcVnFUGZIhagbyWQ4mc6YFlJ3XuKa8NLz07eTON72gJrCdPIevrppRDJlO3yIeHM5LU86TB0Lg2OJ7MhgRazU5x1GGz48KLVpZaghMWqhbKZIEyFnVfXTzlEPbyL6LLHE+huPT8rUX9y4DVHS1S/mlCp5DEMYyU9n9nihY8Abuvo6FPI37xU7bFJUDbKSoE/NDSDtLvag7t8pQq3qMI9mjmY4vAS3Fes3tzYpux9Pf5kyXCzmpUpnGWK/LboioLE37D9pQHD5uyv4uxfgV2C4JW2nR/JQ7ZuevqaZl2VOt08F4Y/X1owBKGM+EOUwABaeRfsyzqnlObsQQ5B2SMAdn8MhGDaOaG79auofaLLTseR0V/kcufGU/Ggr+UXJ4ybfE8owwb3zwPiKEtf0d5a7dwJKWVEIwn3XhPvyn67FZ2bWID8lI9NxJ/TKXHFBGwo5lUDCQPG4JOFO6c+3FGjofk608/3RYD8+fENhO9loC3Juf0r+Mgt6pNSdVmJlNzfIVyb/bMvSt5KSWfqIL/OnJ2sUZ2cLJOm8BsdvlgoefieHVLS7afr2maE+dW5nL7t8sIxSd6k0lVE4qBkfMDFCjmspcCSo7ArP2cDG+kTitiugdVmPhN/TBKvBrpSpAK0alrUNuYPNmMO/jJEsMsj7XH0Ki+Dswc4txNNpq02mwiL4TWw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR08MB5669.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(376002)(346002)(366004)(39830400003)(8936002)(54906003)(66946007)(6916009)(52536014)(83380400001)(508600001)(8676002)(33656002)(6506007)(66476007)(76116006)(316002)(7696005)(66446008)(64756008)(66556008)(5660300002)(186003)(4326008)(86362001)(9686003)(71200400001)(26005)(38070700005)(122000001)(55016002)(38100700002)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?KhF3Kjmkg/HObKPPiJIX8xdu0Vc3PAKbEIijgtMGgIC7dP6FpjvHXp6rOf?=
 =?iso-8859-2?Q?1T1iRuwKp0U4UTZNe9VFEPujQzMLc23zVc2E0KZWgu+wnkqYoUBo1Ifxhj?=
 =?iso-8859-2?Q?TKZLIcNhkLkfwDnVyfBmLKl6gUEZcQ7O5ytgoJFNJ/wV8M4C3NLJNFf0Rf?=
 =?iso-8859-2?Q?YJFdXChyW4aFesWx2HFu4xVscHRD6fXS5GzxQRrs3asGTfNyDfN8QQu6ne?=
 =?iso-8859-2?Q?K7FLC4aqg6W+PT9WCYmapQwFphcHZbAUbI4nkhNdyiRWKouNz8XwrY4YpK?=
 =?iso-8859-2?Q?1Utolz9Mmg989NwMJzkUuqcyQ/qrS2jp2EZDaRRVIpY9Y2Qfgp03dISIv4?=
 =?iso-8859-2?Q?lklOCOKxQs5BSD14VjZWiiZ9AVJ07S1sZjM+s/eEV77EWPo7uFbatevs8D?=
 =?iso-8859-2?Q?1sUwE4C2zkbNcBCzFd25TfO4tu6Uq42tYi2O5vsx4Fd8ZDTEOtJELh2Iqb?=
 =?iso-8859-2?Q?jOZ/NtY0GauUZHurcZkjApYJTabHT0MPqMxyROaljqyRRJ2RAacuQRzVhQ?=
 =?iso-8859-2?Q?2M+G5BNM0rV5DOHvAnbxpRYLXYlznBhYnwheJz5eiNCDvfCa7XlHkIn2u4?=
 =?iso-8859-2?Q?70LphZMuu9ylzTS1ExPUVqrFtCXe33aN2epjF3OxXqFguk6+Q7VKN+VTfU?=
 =?iso-8859-2?Q?AIWk57FVr6frEKpghlEmD7yP/dGU4w7uv7mQusf6wC51iInRTYPuXYNc0D?=
 =?iso-8859-2?Q?W0I59ep4OwSiNqkdbf7egtnUtiXlzcRnKJnCbqZK6rHEeizea9JlGcWMSN?=
 =?iso-8859-2?Q?b4/0/GTq2SA9F9baRZO7hArdbAVNFA3aqdVHH+P/6jaNXJjcnfVdRAlwJH?=
 =?iso-8859-2?Q?tUeHu0/wxLmfk7MbQDsdGg/5YF+Fm2fGXZeJ3ZJ+9CLm/y5NPpP4zo1jan?=
 =?iso-8859-2?Q?CIaZc7Znlspvz1U5ADIqHc4/zpnrTx7MGZWgmDUeyaYVu7twhiqC0DMWmL?=
 =?iso-8859-2?Q?xqx+nh/uGolEbmU4sGL5+TOYMqpje1WRThrtIeUUk+mNc3IDF3Uex3w1/1?=
 =?iso-8859-2?Q?xQEwHZp+4v/aPUyalqrgRERrn8cWZpW6Vg5lVgY86GLpsiNwD0bVSDUqKP?=
 =?iso-8859-2?Q?I6VA8vW9bYkT8AtMRZakZFvKDBtyBIyioNMEEgKljRlOtK7/W6bduVehwa?=
 =?iso-8859-2?Q?g2wBs0JVZOhm/qBEKuL2ldq8tA/vpujk8VI6Q/JKe74Yr9ucA0V4hHrbI8?=
 =?iso-8859-2?Q?3etCxfydy4kZKIuv0+QLRsF1WEU6WljgbV3J19IeqN06j75STf02F3iGTK?=
 =?iso-8859-2?Q?KDk4muu+n8NiJ/lD4wkFqGDnF6lSPEuL+EpucPCTSlVxIyC2iRjDjuXmp3?=
 =?iso-8859-2?Q?jiB1FhQhmlN9XDWaIi5fzzYqAYne3GAxxp/jl4zzbwg3MdA=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: prospeo.com.pl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBAPR08MB5669.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae38a8a7-a2ca-4135-bf99-08d98c057941
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2021 15:48:58.5627
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e560acdf-c796-4d0e-983d-f30d2e4a3e2f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lsz2vFT9SX4zTS8x2BHx2lP33ZWgO4BWeUpAETYULRIDf2U3akAX1gxHIX0yEporYK4eQxdoub8BGc7lwVwkcMHjSDS8vHUhLaiW7S/15nwyik9P0I/GR1kxEZWgIntu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4187
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Please insert this almost patch somewhere under .IR n_type, maybe before .B=
 Default/unknown namespace (e_type !=3D ET_CORE):

.TP
      .\" commit 7648b1330c335601b7c09c25f77a03cda128fcab
.B n_name =3D Linux (soname =3D linux-vdso or such)
.RS
.TP 12
.PD 0
.B n_type =3D 0
Linux kernel version in the desc field (ElfN_Word), to be matched against t=
he GNU ABI tag, see vdso(7).
.PD
.RE

Signed-off-my: Christopher Yeleighton <giecrilj@stegny.2a.pl>

. PLEASE NOTE: for=A0nontrivial patches, you can save the maintainers a=A0l=
ot=A0of time by attending to the following:
o Describe how you obtained the information in your patch. For example, was=
 it:
. by reading (or writing) the relevant kernel or (g)libc source code? (plea=
se provide a pointer to the relevant code)
At arch/x86/entry/vdso/vdso-note.S
. by writing a test program? (send it with the patch, but please make sure =
it is as simple as possible, and provide instructions on how to use and/or =
a demo run)

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <sys/auxv.h>
#include <elf.h>

struct sysnames { char write [06]; } const sysnames =3D { "write" };
int=20
main (int argc, char const *const argv [])
{ Elf64_Ehdr
    const *const ph =3D (Elf64_Ehdr const *)
    getauxval (AT_SYSINFO_EHDR)
    ;
  if (printf ("Reading vDSO at %p\n", ph)
      < 0)
    { perror (sysnames .write); return EXIT_FAILURE; }
  if (ph)
    {
      uint16_t const shnum =3D ph ->e_shnum, shstrndx =3D ph ->e_shstrndx;
      ; Elf64_Off const shoff =3D ph ->e_shoff;
      Elf64_Shdr const *const sh_B
	=3D (Elf64_Shdr const *) (
				ph ->e_ident + shoff)
	; Elf64_Shdr const *const
	    sh_E =3D sh_B + shnum;
      char const *const shstr =3D=20
	ph ->e_ident +
	sh_B [shstrndx] .sh_offset
	;
      if (SHN_UNDEF =3D=3D shstrndx || SHN_XINDEX
	  =3D=3D shstrndx) return EXIT_FAILURE;=20
      assert (ELFMAG0 =3D=3D ph ->e_ident [EI_MAG0
				       ]);
      assert (ELFMAG1 =3D=3D ph ->e_ident [EI_MAG1]);
      assert (ELFMAG2 =3D=3D ph ->e_ident [EI_MAG2
				       ]);
      assert (ELFMAG3
	      =3D=3D ph ->e_ident [EI_MAG3
			       ]);
      if (printf ("%#o section(s) at offset %#o\n", shnum, shoff
		  ) < 0)
	{ perror (sysnames .write); return EXIT_FAILURE; }
      for (Elf64_Shdr const *
	     psh
	     =3D sh_B
	     ; psh
	     < sh_E
	     ; ++ psh
	   ) {
	if (SHT_NOTE =3D=3D psh ->sh_type
	    )
	  {
	    char const *const n_B =3D ph ->e_ident + psh ->sh_offset;
	    uint32_t sz =3D psh ->sh_size;
	    if (printf ("section %s size %#o\n"
			, shstr + psh ->sh_name, sz
			) < 0)
	      { perror (sysnames .write); return EXIT_FAILURE; }
	    for (
		 uint32_t
		   o1 =3D 0; o1 < sz; ) {
	      Elf64_Nhdr const *const note =3D
		(Elf64_Nhdr const *) (
				      n_B + o1
				      )
		; Elf64_Word const nsz =3D note ->n_namesz, dsz =3D note ->n_descsz
		    ;
	      if (printf ("note %#o %s(%#o) %#o\n"
			  , nsz,
			  note + 01,
			  note ->n_type
			  ,
			  dsz
			  ) < 0)
		{ perror (sysnames .write); return EXIT_FAILURE; }
	      o1 +=3D
		sizeof *note + ((nsz + 03) & ~ 03);
	      if (sizeof (int)
		  =3D=3D dsz)
		if (printf ("version %#o\n"
			    , * (int const *) (n_B + o1)) < 0)
		  { perror (sysnames .write); return EXIT_FAILURE; }
	      if (printf ("off %#o %#o %#o %#o\n"
			  , sizeof *note, nsz, dsz,
			  o1 +=3D
			  + ((dsz
			      + 03) & ~ 03)) < 0)
		{ perror (sysnames
			  .write); return EXIT_FAILURE
				     ; }
	    }
	  }
      }
    }
  return EXIT_SUCCESS; }


