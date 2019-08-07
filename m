Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1A8584B56
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2019 14:23:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727171AbfHGMXb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Aug 2019 08:23:31 -0400
Received: from mx1.redhat.com ([209.132.183.28]:43321 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726873AbfHGMXb (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 7 Aug 2019 08:23:31 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id B35D630EA18E;
        Wed,  7 Aug 2019 12:23:31 +0000 (UTC)
Received: from unused-4-132.brq.redhat.com (unknown [10.43.2.25])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 135F4261A7;
        Wed,  7 Aug 2019 12:23:30 +0000 (UTC)
Message-ID: <4a8e2d3e55b07975b4e194d819c25c0fa67b2fdd.camel@redhat.com>
Subject: Re: [PATCH] mmap.2: fix EINVAL conditions
From:   Nikola =?ISO-8859-1?Q?Forr=F3?= <nforro@redhat.com>
Reply-To: nforro@redhat.com
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Wed, 07 Aug 2019 14:23:29 +0200
In-Reply-To: <ba87bced44ac346f45887c6e91d0d29b0632a7f9.camel@redhat.com>
References: <ba87bced44ac346f45887c6e91d0d29b0632a7f9.camel@redhat.com>
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Wed, 07 Aug 2019 12:23:31 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping.

On Mon, 2019-06-24 at 13:20 +0200, Nikola Forró wrote:
> Since introduction of MAP_SHARED_VALIDATE, in case flags contain
> both MAP_PRIVATE and MAP_SHARED, mmap() doesn't fail with EINVAL,
> it succeeds.
> 
> The reason for that is that MAP_SHARED_VALIDATE is in fact equal
> to MAP_PRIVATE | MAP_SHARED.
> 
> This is intended behavior, see:
> https://lwn.net/Articles/758594/
> https://lwn.net/Articles/758598/
> 
> Signed-off-by: Nikola Forró <nforro@redhat.com>
> ---
>  man2/mmap.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index cea0bd372..b41e8b9ca 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -565,11 +565,11 @@ was 0.
>  .TP
>  .B EINVAL
>  .I flags
> -contained neither
> -.B MAP_PRIVATE
> +contained none of
> +.BR MAP_PRIVATE ,
> +.B MAP_SHARED
>  or
> -.BR MAP_SHARED ,
> -or contained both of these values.
> +.BR MAP_SHARED_VALIDATE .
>  .TP
>  .B ENFILE
>  .\" This is for shared anonymous segments

