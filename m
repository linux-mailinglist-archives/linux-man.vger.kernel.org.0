Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBAF240CE3
	for <lists+linux-man@lfdr.de>; Mon, 10 Aug 2020 20:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728150AbgHJSV1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Aug 2020 14:21:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728146AbgHJSV0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Aug 2020 14:21:26 -0400
X-Greylist: delayed 208 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 10 Aug 2020 11:21:26 PDT
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B922C061756
        for <linux-man@vger.kernel.org>; Mon, 10 Aug 2020 11:21:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by hera.aquilenet.fr (Postfix) with ESMTP id 22B401146E;
        Mon, 10 Aug 2020 20:21:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
        by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id xHBvQ3-qOD4r; Mon, 10 Aug 2020 20:21:22 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
        by hera.aquilenet.fr (Postfix) with ESMTPSA id 723161146D;
        Mon, 10 Aug 2020 20:21:22 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
        (envelope-from <samuel.thibault@ens-lyon.org>)
        id 1k5CQD-00CNeP-Gi; Mon, 10 Aug 2020 20:21:21 +0200
Date:   Mon, 10 Aug 2020 20:21:21 +0200
From:   Samuel Thibault <samuel.thibault@ens-lyon.org>
To:     Zack Weinberg <zackw@panix.com>,
        Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        larryd.kbd@gmail.com, gwc@opengroup.org,
        austin-group-l@opengroup.org, ajosey@opengroup.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        enh@google.com, Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200810182121.msb7mngurj653cau@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
        Zack Weinberg <zackw@panix.com>,
        Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>, larryd.kbd@gmail.com,
        gwc@opengroup.org, austin-group-l@opengroup.org,
        ajosey@opengroup.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        enh@google.com, Joseph Myers <joseph@codesourcery.com>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
 <5f3149ad.G/e/1Ac5SJF38sra%Joerg.Schilling@fokus.fraunhofer.de>
 <CAKCAbMgmuha1qTB_TKNSVxKvoWKVU-eG27+G-S9kP6rR021fGA@mail.gmail.com>
 <20200810181753.pkoqpkd3k54b6rfj@function>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200810181753.pkoqpkd3k54b6rfj@function>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Samuel Thibault, le lun. 10 août 2020 20:17:53 +0200, a ecrit:
> Zack Weinberg, le lun. 10 août 2020 14:10:42 -0400, a ecrit:
> > "control(ler) side" still gives the wrong impression IMNSHO.  The
> > pty[p-r][0-9a-f] | ptmx devices don't exert any actual control over
> > anything.
> 
> ? They do to some extent: writing ^C on that side will send a SIGINT to
> the foreground process there (even if owned by another user!).

Unless they opened it with O_NOCTTY to avoid letting it be their
"controlling terminal". There really is some "control" terminology here,
which is initiated by the pty side.

Samuel
