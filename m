Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 477FB32E654
	for <lists+linux-man@lfdr.de>; Fri,  5 Mar 2021 11:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbhCEK2P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 05:28:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbhCEK1y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 05:27:54 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59C0BC061574
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 02:27:54 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DsP7m3gW4z1s0tQ;
        Fri,  5 Mar 2021 11:27:48 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DsP7m331Rz1t6p1;
        Fri,  5 Mar 2021 11:27:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id nYSkiHXXDIPy; Fri,  5 Mar 2021 11:27:46 +0100 (CET)
X-Auth-Info: L2wetvrPUJA82V10ea6thzB0aqo9hBoc5mI93cmg3UkhzpSzFO3a3QZ14tzUTd1U
Received: from igel.home (ppp-46-244-183-40.dynamic.mnet-online.de [46.244.183.40])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Fri,  5 Mar 2021 11:27:46 +0100 (CET)
Received: by igel.home (Postfix, from userid 1000)
        id E0D7D2C3695; Fri,  5 Mar 2021 11:27:45 +0100 (CET)
From:   Andreas Schwab <schwab@linux-m68k.org>
To:     Florian Weimer via Libc-alpha <libc-alpha@sourceware.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH] makecontext.3: Fix function declarator with empty
 parentheses.
References: <20210304194534.130735-1-alx.manpages@gmail.com>
        <CAKCAbMg3G4EAeuUhN9EQTDnrTSD0sPoH0uH1=kkpfj9qYorPdg@mail.gmail.com>
        <87v9a6hbgt.fsf@oldenburg.str.redhat.com>
        <c5df9263-edb8-c50a-e691-a454d4ae833f@gmail.com>
        <8735x9hpe7.fsf@oldenburg.str.redhat.com>
X-Yow:  Look DEEP into the OPENINGS!!  Do you see any ELVES or EDSELS...
 or a HIGHBALL??...
Date:   Fri, 05 Mar 2021 11:27:45 +0100
In-Reply-To: <8735x9hpe7.fsf@oldenburg.str.redhat.com> (Florian Weimer via
        Libc-alpha's message of "Fri, 05 Mar 2021 11:21:36 +0100")
Message-ID: <87tupp6gke.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mär 05 2021, Florian Weimer via Libc-alpha wrote:

> I don't know.  SUSv2 has (void *func) (), which would make this a glibc
> bug.  I'm not sure if I have easy access to POSIX.1 from 2001, which I
> believe still has this function.

https://pubs.opengroup.org/onlinepubs/009695399/functions/makecontext.html

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."
