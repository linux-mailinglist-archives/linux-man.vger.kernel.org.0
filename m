Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 145C763BFFD
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 13:24:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233864AbiK2MYT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 07:24:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbiK2MYT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 07:24:19 -0500
Received: from smtp1.tecnico.ulisboa.pt (smtp1.tecnico.ulisboa.pt [193.136.128.21])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E032449B54
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 04:24:16 -0800 (PST)
Received: from localhost (localhost.localdomain [127.0.0.1])
        by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 9CA4E600041A;
        Tue, 29 Nov 2022 12:24:15 +0000 (WET)
X-Virus-Scanned: by amavisd-new-2.11.0 (20160426) (Debian) at
        tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
        by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavisd-new, port 10025)
        with LMTP id ajYfZxPG9Y9q; Tue, 29 Nov 2022 12:24:12 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
        by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id C4C1C6007C01;
        Tue, 29 Nov 2022 12:24:12 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tecnico.ulisboa.pt;
        s=mail; t=1669724652;
        bh=ZbAi6eR4Bbx6dBH1BUPND5nr8lz6u08c29E6LVJDMuc=;
        h=From:To:Cc:References:In-Reply-To:Subject:Date;
        b=sp4L2q4FGbvqdIhb1iwbRFsdhQgY4AeAyFe7smpUPpoPXMEG/TskAkMvgmQdu2DAF
         LQ47vGjeXuvwg/fvlJRs8WU8+yPwRG0WDZi7ygF0h+dBEVjFf0AnEJNk+cVKk9fwLW
         cKpSSouq8vYeZE3jQQHj4VXRM4XOM3XwlV2qFZvY=
Received: from SBruno (unknown [IPv6:2001:690:2100:1c:1461:394e:ed06:a6e6])
        (Authenticated sender: ist14265)
        by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 2380F360072;
        Tue, 29 Nov 2022 12:23:38 +0000 (WET)
From:   "Miguel Pardal" <miguel.pardal@tecnico.ulisboa.pt>
To:     <mtk.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>
References: 
In-Reply-To: 
Subject: fread and fwrite pages
Date:   Tue, 29 Nov 2022 12:23:36 -0000
Message-ID: <19a101d903ed$7d2799a0$7776cce0$@tecnico.ulisboa.pt>
MIME-Version: 1.0
Content-Type: text/plain;
        charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIu/yiP8Z6M11dggXh4OJo84AtOf62p3GHQ
Content-Language: pt
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

Thanks for the great work you do in providing the man7 pages.
They are very helpful for me and my students.

I came across a possible typo in the fwrite page:
https://man7.org/linux/man-pages/man3/fwrite.3.html
It starts with =93fread(3) =96 Linux manual page=94. Should it start =
with
=93fwrite(3)=94?

I realize the page contains both the explanation of fread and fwrite, =
but
still wanted to make sure the header is correct.
https://man7.org/linux/man-pages/man3/fread.3.html

Best regards and keep up the great work,

~ Miguel Pardal

------------------------------
Prof. Miguel L. Pardal
INESC-ID
Instituto Superior T=E9cnico, Universidade de Lisboa, Portugal
URL: http://web.tecnico.ulisboa.pt/miguel.pardal/
Rua Alves Redol, 9
1000-029 Lisboa
Portugal

Email: mailto:miguel.pardal@tecnico.ulisboa.pt
------------------------------




