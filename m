Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A45B52D64BA
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 19:19:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732206AbgLJSS3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 13:18:29 -0500
Received: from foss.arm.com ([217.140.110.172]:57406 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2403837AbgLJSSS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 10 Dec 2020 13:18:18 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B406B30E;
        Thu, 10 Dec 2020 10:17:32 -0800 (PST)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CF233F718;
        Thu, 10 Dec 2020 10:17:31 -0800 (PST)
Date:   Thu, 10 Dec 2020 18:17:28 +0000
From:   Dave Martin <Dave.Martin@arm.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: cacheflush.2
Message-ID: <20201210181726.GT6882@arm.com>
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 09, 2020 at 07:34:09PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Heinrich & Michael,
> 
> What about the following?:
> 
> [
> NOTES
>        GCC provides a similar function, which may be useful on  archi‐
>        tectures that lack this system call:
> 
>            void __builtin___clear_cache(void *begin, void *end);
> ]
> 
> Cheers,
> 
> Alex

Maybe we should discourage people from calling the cacheflush syscall?

I think that people shouldn't be using the syscall unless they really
need the finer grained control it provides, and are prepared to take a
hit to portability.

(On arches where userspace is allowed to do cache flushing directly,
__builtin___clear_cache() should transparently do the right thing, with
no syscall overhead -- if not, that's probably a bug in the toolchain or
compiler support library.)

[...]

Cheers
---Dave
