Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2BFF3C2755
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 18:12:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbhGIQO5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 12:14:57 -0400
Received: from mengyan1223.wang ([89.208.246.23]:32984 "EHLO mengyan1223.wang"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229459AbhGIQO5 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 9 Jul 2021 12:14:57 -0400
Received: from [IPv6:240e:35a:108d:3c00:dc73:854d:832e:3] (unknown [IPv6:240e:35a:108d:3c00:dc73:854d:832e:3])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@mengyan1223.wang)
        by mengyan1223.wang (Postfix) with ESMTPSA id C10C166874;
        Fri,  9 Jul 2021 12:12:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mengyan1223.wang;
        s=mail; t=1625847133;
        bh=yad6aRp/STRZ9wBS8ZoEAV8/bsx3GJtOe+Fo+WVGodw=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=dMoD0RZ3rw9zexXsyada7g//duMH7lI/bOVIVoFP8hQZCdgavpaNBddm1mEm9bS9k
         jSkid/4sUIq+nukVOludUMV9VuE3/xyE2joycRZo7FqRT392Ln930Gx0z1mAKUT+xh
         4ShiCfFRBKxN1nv4SId979cCDucUPTDWaWby7OZdsm6Z5fkPN/cIrg1oYIeMFdkWMQ
         4eOGCuHPBubKV6p1J4o/ruXH9HZuLVnsDe5NQ9vAIgpNaEDkSdOJh7rrpxkXqvaoK5
         DDDSbw+pyrWct13m8PMonr6Al+wBBYpOliyTAHjvJXHlSw2lXvPYdjkIpsXJKIBcN2
         P9NXOZCTyXGrg==
Message-ID: <eb7d17ddda7376f4d550081bf1698e564016b222.camel@mengyan1223.wang>
Subject: Re: strlen
From:   Xi Ruoyao <xry111@mengyan1223.wang>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jonny Grant <jg@jguk.org>,
        Segher Boessenkool <segher@kernel.crashing.org>
Cc:     gcc-help@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fw@deneb.enyo.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sat, 10 Jul 2021 00:11:47 +0800
In-Reply-To: <fbd62475-fa04-d26e-7d58-bc96180f7e4c@gmail.com>
References: <87363whf2z.fsf@mid.deneb.enyo.de>
         <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
         <87bl7fozxi.fsf@mid.deneb.enyo.de>
         <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
         <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
         <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
         <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
         <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
         <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
         <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
         <20210708234929.GU1583@gate.crashing.org>
         <3ddd0291-04d2-b35a-ce81-034bb0d9392a@jguk.org>
         <fbd62475-fa04-d26e-7d58-bc96180f7e4c@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2021-07-09 at 16:17 +0200, Alejandro Colomar (man-pages) via
Gcc-help wrote:
> Hi Jonny, Segher,
> 
> On 7/9/21 3:54 PM, Jonny Grant wrote:
> > Yes, this could work. But it does rely on programmer typing it like
> > that every time... Maybe an inline function better.
> 
> I agree on that.
> 
> > 
> > inline size_t safestrlen(const char * s) {return s?strlen(s) : 0}
> > 
> > Perhaps there are too many email addresses on this cc list now.

I think the discussion at least has nothing to do with linux-man or gcc-
help: man pages just describe the existing API (C or POSIX or Linux
specific), and GCC just compiles code and doesn't care what the API is.
Neither is a place to discuss "how to design an API".

And I think Jonny should discuss the API design with the users of his
API (maybe his collegue or downstream developers), instead of some
random guys in mail list.  The users are the ones who will call his
function anyway so it's better to choose an API they like.  Yes, Jonny
can "force" the users to do something for safety, but this decision
should also be discussed with them and documented.  Or they won't
understand the decision, and may "invent" or "improvise" some "new
wheels", breaking Jonny's design.

For example, I don't like a function silently treats NULL as an empty
string.  I prefer a function to abort() or print a log "strlen_checked()
is called with NULL, there is a bug in your code" when I (mis)use NULL.
But it's just my 2 cents: if the potential users of the API agree the
function to act as that, then it's good to go.

-- 
Xi Ruoyao <xry111@mengyan1223.wang>
School of Aerospace Science and Technology, Xidian University

