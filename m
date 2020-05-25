Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA741E14F5
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 21:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390328AbgEYTww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 15:52:52 -0400
Received: from mout.gmx.net ([212.227.17.22]:53945 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388757AbgEYTww (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 25 May 2020 15:52:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1590436368;
        bh=BVaLvgJmqoIHVUwmYJlkJPPHH13G63ZRMRtWnyHQjGY=;
        h=X-UI-Sender-Class:Date:From:To:cc:Subject:In-Reply-To:References;
        b=Hh0nElEeq+TaFbb1w436XNiURacGCg6MNjAiyir2TLcWQXbQ/anxH/rhn4IUObq4u
         Q/ZsTnLNp+Ax8J9ZfSyms5hst1zpmLI2L7c0Koesy/k/f2ngMWefO/t4l5OVOFhLvG
         BiHm4luN3bx1shM674MhvzwkeAwKuPQxKlZe7eAI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mua.gmx.com ([68.56.186.98]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N8GMq-1iztsu0yX2-0149fY; Mon, 25
 May 2020 21:52:48 +0200
Date:   Mon, 25 May 2020 15:52:45 -0400 (EDT)
From:   J William Piggott <elseifthen@gmx.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
cc:     Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Carlos O'Donell via Libc-alpha <libc-alpha@sourceware.org>
Subject: Re: The GNU C Library Manual - Authoritative or not?
In-Reply-To: <CALxWeYqN+4GeTtE2Cf0ZtHn+eFZa4P9fh709qqXnyqd+nGUF=g@mail.gmail.com>
Message-ID: <nycvar.YAK.7.77.849.2005251443470.1929@zhn.tzk.pbz>
References: <501e5e0c-f293-b838-5106-764c6b18e061@gmail.com> <875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com> <87ftbs3zb8.fsf@oldenburg2.str.redhat.com> <CALxWeYqN+4GeTtE2Cf0ZtHn+eFZa4P9fh709qqXnyqd+nGUF=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Provags-ID: V03:K1:Zvdm0kvsF5Um4S0zbktDBfG7s0W+hx6oyRQBH6kxULoUdFZNWaA
 ZpFcSJ23jOcys9+SL31a4MTt3udT0q6yLVyFGpUMTPGtfvIX6ulhshgzBt35m6J2JMSH01o
 8s8WOQ33SfjB9gn5UrSreYNNR0bZ1gItxLqzKuu25w6ydoPc5U5dOEzu7/4LYLNYMtywQwE
 ZO6RweYMVz6LT8d0geqOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:10W8mAO5QD4=:doBKs2EmYh5optX1CYDRGz
 USYEHBpg0uqZyx8RpIRXZCQI5mTqG0s2/ewgp6suHEBKUaSf3WimK64XGtE24FbNtUVFLLQRO
 HAZFjashwGFri6EilWWzrenufsPPKmGkOnLC3r2hbYPKu8rvY5VZ5bek3KtaDD2s3oek8b1eG
 Iz4OSHkkIfL6QjdCiYAPZkaAosyP4XKRY6T1pGfjW+0NS0o0bIzeBwrCR277LKUPL+JaAOQfJ
 /NTYThyeKdf4CSSMTmp0ihkTrg+R4824GST4RsoTJK1L2DBYQDL45/d0oBdYCJyS0uDN1aEbz
 Hfxw18TQeAVRInuqOn6TdWp5FXVzkeYhICzhlagCMa0Le9VnA2Q4s4AbNsPQp4j+Ydid9wB8o
 g9kDEozBzPPgFnim889oA6HFhfoaGfrR6r9zEbVntZRnabgpAgESn7Ex0jTXoFIePn8dkFlly
 5baus7JQWOWLg3pLbkvFLgSAVgkh4wV0fKWxA8vHp1jJxBcMr1cae4xuPR0BRCDHKsVJ+yz+j
 VhHVIkOWyLa+pv2haecP1CNkX64nj22Fqw4z90piqHKTIhBhj2QuUs83lTztDTFSzUXHJGwKH
 tHb4XIPVHpPscUOxZzIOyDkn6e1iXJPWavjGdR3tiKQ5VE4zGNY11KNnlzplIouHhambBHN7e
 rRu/jCMG5sfgA3xWNyX42o+MzJvc3fUDzKU31QDjErMzPMZR5zDMCVgG98eFabAgHULPZ+xE9
 PcyvF/ezsQjqIOgT2Ulmb6Edyv3rxC1u+TkoSM36gFAU+C3VXgTmqswHLXLXmzyVlcRWe1WqN
 R//otU4BUqcOH1PKdgvSZM1xy5jC4zS9HSuUTxdxtmU+zt1uc+yBa3o8g05K1QVx0jDyS5C3P
 J7ZAMycniKk/BpKS0OKz3kpL8kRIZbREWUVbRK3C3Nw5echAwCe1G/QacgyV9Y/FJOE6tkCwd
 lM/WoCnzBkR4JFVRiLXUwn4KJDRroW2ZvE39428Lexj8ZoX0WbCcz11U/CB5osLu2JKh2KRBQ
 LiDtc3ZiZAySmwb5Rl/4QZEfinaE4SY3mXmrxpCogAMN/hd9WUkT7mcYOmyHas97stkiPUetJ
 Gv6dIQkny4A+PZdZanH7JZu4U9h7iVJW+ShUHyg+mhA8s0IOS8ubUpt0yg7SBV9HSq+8rtJ9U
 x4d9UtUOAmCDVS4rEYXNwbrUlgt08xvOdgXPlprZ3xz0P222wq+yX6WVyMqXvc2CbJC4Tp1tS
 /HRKXaYt490/FfT/d
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On Mon, 25 May 2020, Michael Kerrisk via Libc-alpha wrote:

  ... >8

> * I try to make it easy for people to contribute.

Yes, the barrier to entry is pretty high; especially for a simple manual
fix. I speak from experience, I had a list of corrects to make; it was
relatively easy for the Linux man-pages. I believe, after getting two
accepted for The Manual I gave up.

Perhaps a separate mailing list dedicated to The Manual accepting
patches with relaxed rules?

As to discovery, that is, The Manual being unknown. For years my go to
tool for information was apropos(1). Of course you cannot discover
info(1) pages that way. A script could convert The Manual into a man
page. I'd be huge and probably ugly, but people could find it. Actually,
I already use The Manual in a similar way. I cat and format it into a
monolithic text file. I use the pager's search to find what I need. I am
used to the search patterns that, for example, find x-refs, nodes, etc.
It works for me (better then info(1) does).

In the beginning I found the fragmentation of Linux docs frustrating.
Not just info and man pages, but also html, pdf, text, howtos, kernel
docs, etc. I'm used to it now, and I'm thankful that we have as much
information as we do. There seems to be a lot of negative response to
The Manual; I'd like to say that it is a very useful body of work for
me. Michael's project is too. So a big thank you to all that put time
and effort into documentation!


