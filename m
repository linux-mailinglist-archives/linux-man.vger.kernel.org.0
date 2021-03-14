Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAD1F33A8BD
	for <lists+linux-man@lfdr.de>; Mon, 15 Mar 2021 00:20:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbhCNXUU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 19:20:20 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:58902 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbhCNXUL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 19:20:11 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 13E0C72C8B9;
        Mon, 15 Mar 2021 02:20:10 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id DDA697CC8A7; Mon, 15 Mar 2021 02:20:09 +0300 (MSK)
Date:   Mon, 15 Mar 2021 02:20:09 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Szunti <szunti@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: user_namespaces(7) should mention overlay as mountable since
 Linux 5.11
Message-ID: <20210314232009.GA2561@altlinux.org>
References: <87v9a0wews.fsf@gmail.com>
 <CAKgNAkh9XgUT+257TLtKBHsxuOHopqt76BL2xCz+JN2=u-xm=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkh9XgUT+257TLtKBHsxuOHopqt76BL2xCz+JN2=u-xm=w@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On Sun, Mar 14, 2021 at 11:04:26PM +0100, Michael Kerrisk (man-pages) wrote:
> On Tue, 9 Mar 2021 at 16:00, Szunti <szunti@gmail.com> wrote:
> >
> > user_namespaces lists in Capabilities section the filesystems that can
> > be mount:
> >
> >   Holding  CAP_SYS_ADMIN  within  the  user  namespace that owns a process's
> >   mount namespace allows that process to create bind mounts  and  mount  the
> >   following types of filesystems:
> >
> >       * /proc (since Linux 3.8)
> >       * /sys (since Linux 3.8)
> >       * devpts (since Linux 3.9)
> >       * tmpfs(5) (since Linux 3.9)
> >       * ramfs (since Linux 3.9)
> >       * mqueue (since Linux 3.9)
> >       * bpf (since Linux 4.4)
> >
> > IUUC this list should add
> >       * overlay (since Linux 5.11)

It should rather say overlayfs.

> Could you add some info about how you discovered/verified this please.
> 
> That helps us check the details.

What a coincidence, I just happen to have the relevant Linux kernel
merge commits cached:
92dbc9dedccb9759c7f9f2f0ae6242396376988f aka v5.11-rc1~83
4cb2c00c43b3fe88b32f29df4f76da1b92c33224 aka v5.11-rc7~28


-- 
ldv
