Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC80240CED
	for <lists+linux-man@lfdr.de>; Mon, 10 Aug 2020 20:25:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728052AbgHJSZU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Aug 2020 14:25:20 -0400
Received: from hera.aquilenet.fr ([185.233.100.1]:57528 "EHLO
        hera.aquilenet.fr" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727982AbgHJSZT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Aug 2020 14:25:19 -0400
X-Greylist: delayed 439 seconds by postgrey-1.27 at vger.kernel.org; Mon, 10 Aug 2020 14:25:19 EDT
Received: from localhost (localhost [127.0.0.1])
        by hera.aquilenet.fr (Postfix) with ESMTP id 0257C1146C;
        Mon, 10 Aug 2020 20:17:55 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
        by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id u4pJP2OVbHls; Mon, 10 Aug 2020 20:17:54 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
        by hera.aquilenet.fr (Postfix) with ESMTPSA id 54A581146B;
        Mon, 10 Aug 2020 20:17:54 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
        (envelope-from <samuel.thibault@ens-lyon.org>)
        id 1k5CMr-00CNX8-4x; Mon, 10 Aug 2020 20:17:53 +0200
Date:   Mon, 10 Aug 2020 20:17:53 +0200
From:   Samuel Thibault <samuel.thibault@ens-lyon.org>
To:     Zack Weinberg <zackw@panix.com>
Cc:     Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        larryd.kbd@gmail.com, gwc@opengroup.org,
        austin-group-l@opengroup.org, ajosey@opengroup.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        enh@google.com, Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200810181753.pkoqpkd3k54b6rfj@function>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKCAbMgmuha1qTB_TKNSVxKvoWKVU-eG27+G-S9kP6rR021fGA@mail.gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

Zack Weinberg, le lun. 10 août 2020 14:10:42 -0400, a ecrit:
> "control(ler) side" still gives the wrong impression IMNSHO.  The
> pty[p-r][0-9a-f] | ptmx devices don't exert any actual control over
> anything.

? They do to some extent: writing ^C on that side will send a SIGINT to
the foreground process there (even if owned by another user!).

Samuel
