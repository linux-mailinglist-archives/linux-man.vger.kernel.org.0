Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99D9C65FF34
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 11:55:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjAFKzm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 05:55:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjAFKzk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 05:55:40 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 688126CFC5
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 02:55:39 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0DB4CB81CF2
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 10:55:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137B4C433D2;
        Fri,  6 Jan 2023 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673002536;
        bh=QFq+a9pvnmjxs/drh+QlY3G4UHw5CUW0rbjL0Krc2XQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RLAnrWFmLu72VNEb7P6p7vd8NBo8ug6mg3ndkhE1zALca+iXu/MUCG+XFJ0wBXrPE
         H3IPS9P+TobcWAOWC6BPvm64RpdIDSQW/hxIOlaozGQPdVKVX4uKtbIRQnSPX3FV6V
         G3cDJ/qf9ZDPwDHOl9GejVVyE65RxAFn7KwI+J2KLWUPO8bar6GyFn4KH1ry7boklL
         moKDuYdFbyKhiFGnHb/5+OzHtz2wAgGs9hTAfvvNya7VcU8veWzRGMscZGdi7NWViL
         rCZJJFFp21N6Wce2Dr9kxBcZ/3Vr1g6LdEB9O4Gev/xvfQuTbRtyriiPtvubW3efj/
         4FEBsPwDknZog==
Date:   Fri, 6 Jan 2023 11:55:32 +0100
From:   Christian Brauner <brauner@kernel.org>
To:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        libc-alpha@sourceware.org, Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2,
 sendmmsg.2, set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3,
 getaddrinfo_a.3, getutent.3, mbrtowc.3, mbsinit.3, rtime.3, rtnetlink.3,
 strptime.3, NULL.3const, size_t.3type, void.3type, aio.7, netlink.7, unix.7:
 Prefer bzero(3) over memset(3)
Message-ID: <20230106105532.l2n5ixs7oxgdtvr3@wittgenstein>
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jan 05, 2023 at 05:48:08PM -0300, Adhemerval Zanella Netto via Libc-alpha wrote:
> 
> 
> On 05/01/23 16:37, Alejandro Colomar via Libc-alpha wrote:
> > bzero(3) is simpler to use, and can avoid silly mistakes that are hard
> > to spot.  memset(3), while it is necessary in a few very-specific cases,
> > should be avoided when the memory is to be zeroed.
> > 
> > POSIX and ISO can say otherwise, but it doesn't make any sense to
> > recommend using memset(3) over bzero(3).
> 
> bzero is deprecated by POSIX.1-2001, removed by POSIX.1-2008, and on glibc 
> implementation now calls memset (previously some architecture added ifunc 
> redirection to optimized bzero to avoid the extra function call, it was
> removed from all architectures). 
> 
> Also, GCC for some time also replaces bzero with memset so there is no gain
> in actually call bzero (check glibc commit 9403b71ae97e3f1a91c796ddcbb4e6f044434734).

This whole s/memset/bzero/g patchset seems like a lot of busywork that
doesn't seem to bring any real benefit. I would agree with the rest here
and just drop this. That's just going to add confusion to the manpages.
