Return-Path: <linux-man+bounces-314-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BCA81FBA0
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 23:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 361371F22E5B
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 22:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC98510794;
	Thu, 28 Dec 2023 22:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="S6ANK6Vv"
X-Original-To: linux-man@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CBF10A01
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 22:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id AFFC5240103
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 23:43:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1703803433; bh=2qnk5XFq4gz4mra+Bj/yEA5CheONLeraJWmFxKkdsUw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:
	 Content-Disposition:From;
	b=S6ANK6VvXuB0tmqXhsKnTcUVygor/kE/NsbbvNfMaKc2MosPk7wlUnEPNaVRE7Ypo
	 LuTTe58mTopaEok/9D1vVntvQxWl+q2X0P0/6WvHM3zO6RugFSSLc5iM4dx4TYPrIV
	 PwFyucK79/+BalMHjirOFkGBieaF/7qZDJ+IVTW3+EpyOg93wFmNgd2USFkSmd96eC
	 GVXiKt2WhVUA2jZL3aIUKtsH0JWexFzL7O0Xn1R74R1ozhizCUGCnypgYhGzOJswV8
	 sNVtPBw/3JA61xHwjsyqmGZeWX0J7Tg9Fb5s0RZ7s7w9+4H2Qp5kNlkMyGEr2CSY9W
	 KFQf4hTtgPohQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4T1Npd1C4Jz9rxB;
	Thu, 28 Dec 2023 23:43:53 +0100 (CET)
Date: Thu, 28 Dec 2023 22:43:10 +0000
From: Tom Schwindl <schwindl@posteo.de>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_218018
Message-ID: <ZY35_ukf-q9--X-7@posteo.de>
References: <20231228155601.16558-1-r.pandian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231228155601.16558-1-r.pandian@gmail.com>

Hi,

On Thu, Dec 28, 2023 at 09:26:01PM +0530, Rajesh Pandian wrote:
> ---
>  man3/dl_iterate_phdr.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> index 0a8beb3ae..f47fdd502 100644
> --- a/man3/dl_iterate_phdr.3
> +++ b/man3/dl_iterate_phdr.3
> @@ -129,7 +129,9 @@ The
>  .I dlpi_phnum
>  field indicates the size of this array.
>  .P
> -These program headers are structures of the following form:
> +The ELF program header is described by the type Elf32_Phdr 
> +or Elf64_Phdr depending on the architecture.
> +Following is an example of 32 bit architecture:

I'd slightly change the last sentence to

  The following is an example of the 32-bit architecture

since that sounds a bit nicer IMO.

>  .P
>  .in +4n
>  .EX
> -- 
> 2.39.2
> 
> 

-- 
Kind Regards,
Tom Schwindl

