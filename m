Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE9B4088D2
	for <lists+linux-man@lfdr.de>; Mon, 13 Sep 2021 12:13:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238241AbhIMKO4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Sep 2021 06:14:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:36556 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238585AbhIMKO4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 Sep 2021 06:14:56 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3748E60F9B;
        Mon, 13 Sep 2021 10:13:40 +0000 (UTC)
Date:   Mon, 13 Sep 2021 12:13:37 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Andrew Wock <ajwock@gmail.com>
Subject: Re: [PATCH 09/15] clone.2: ERRORS: Add EACCESS with
 CLONE_INTO_CGROUP + clone3
Message-ID: <20210913101337.invjninf7yyabyuf@wittgenstein>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
 <20210910224717.499502-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210910224717.499502-10-alx.manpages@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Sep 11, 2021 at 12:47:10AM +0200, Alejandro Colomar wrote:
> [Andrew]:
> I noticed that clone3 can send the EACCES errno after I wrote a
> program that used clone3 with the CLONE_INTO_CGROUP flag.
> To me, it's important to know what kind of failure occurred if the
> clone3() fails, so I was glad that a unique errno is set for
> this case, but it wasn't documented on the clone man page.
> 
> [Christian]:

Hey Alejandro,

I was on vacation last week so just catching up with mails now.

> In essence, any error that could occur during regular fs-based migration
> at write-time can also occur during CLONE_INTO_CGROUP. The clone3()
> manpage just has the inverse of that above statement:
> 
> "Note that all of the usual restrictions (described in cgroups(7)) on
> placing a process into a version 2 cgroup apply."
> 
> Reported-by: Andrew Wock <ajwock@gmail.com>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---

Thanks for picking that up.
Christian
