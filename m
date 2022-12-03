Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED9A364193C
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 22:29:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbiLCV3v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 16:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiLCV3v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 16:29:51 -0500
X-Greylist: delayed 870 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 03 Dec 2022 13:29:49 PST
Received: from xmailer.gwdg.de (xmailer.gwdg.de [134.76.10.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519AF1B9E1
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 13:29:49 -0800 (PST)
Received: from excmbx-27.um.gwdg.de ([134.76.9.230] helo=email.gwdg.de)
        by mailer.gwdg.de with esmtp (GWDG Mailer)
        (envelope-from <muecker@gwdg.de>)
        id 1p1Zqs-000N7H-NY; Sat, 03 Dec 2022 22:15:14 +0100
Received: from EXCMBX-29.um.gwdg.de (134.76.9.204) by EXCMBX-27.um.gwdg.de
 (134.76.9.230) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Sat, 3
 Dec 2022 22:15:14 +0100
Received: from [192.168.0.221] (10.250.9.199) by EXCMBX-29.um.gwdg.de
 (134.76.9.204) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2507.16; Sat, 3 Dec
 2022 22:15:10 +0100
Message-ID: <934a8af56874734dd113a1791ae1c9772c8956fc.camel@gwdg.de>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <muecker@gwdg.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>,
        "Michael Matz" <matz@suse.de>
CC:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Date:   Sat, 3 Dec 2022 22:15:06 +0100
In-Reply-To: <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
         <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
         <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
         <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
         <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
         <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
         <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
         <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
         <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
         <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
         <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
         <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
         <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
         <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
         <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
         <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
         <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
         <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
         <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.250.9.199]
X-ClientProxiedBy: excmbx-28.um.gwdg.de (134.76.9.201) To EXCMBX-29.um.gwdg.de
 (134.76.9.204)
X-Virus-Scanned: (clean) by clamav
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am Samstag, dem 03.12.2022 um 22:03 +0100 schrieb Alejandro Colomar:
...
> Since we've seen that using a '.' prefix seems to be problematic
> because of lookahead, and recently Michael Matz proposed using a
> different punctuator (he proposed '@') for differentiating parameters
> from struct members, I think going  in that direction may be a good
> idea.
> 
> How about '$'?

I don't see how the lookahead issue has anything to do with the choice
of the symbol. Here, also with the context would fully disambiguate
between other uses so I do not think there is any issue with using this
syntax.  '$' is much more problematic as people use it in identifiers,
'@' may cause confusion with objective C.

Martin





