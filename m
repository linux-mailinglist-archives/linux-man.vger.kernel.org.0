Return-Path: <linux-man+bounces-2581-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F55A50A0C
	for <lists+linux-man@lfdr.de>; Wed,  5 Mar 2025 19:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 831111886308
	for <lists+linux-man@lfdr.de>; Wed,  5 Mar 2025 18:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13CD0199E89;
	Wed,  5 Mar 2025 18:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/TjyPTp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31CD16426;
	Wed,  5 Mar 2025 18:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741199765; cv=none; b=JmYaJDtr2YhOVfztYfLGBjiI6e/RTcbRVWlNZ2uR2zuP5zaDo6qBxBre05xC542C1jtSQb8zZDwOyAAKi+TR04di6uzNSQyVg2sbwELNeMFnPIxMBmd5Rcly8LYOSqQlvlMBCpxQsKT+EP4Nwwe9jaLPBUAFqxFrNTT0+hKMVGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741199765; c=relaxed/simple;
	bh=LQ6pzgd7n+xkRoX7t42oZcb1aM4k3WIsxmIywGQi1Bw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H6LlqS8BlaNS+TiMBHRyEKZBzvvYCHfg+XAu65zxN1KqnAl0TbE8irrcRJr9L8beRKmzrStdXXmv5ry1fs6xbPnwwauZN1poH2zD2Ad1h5fWeHZRov9GUA29xKdrL8tQKIQ35dYCGoy3umjDz32i0+oWNlhTsRA7iUpahxn3AMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/TjyPTp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A863FC4CED1;
	Wed,  5 Mar 2025 18:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741199765;
	bh=LQ6pzgd7n+xkRoX7t42oZcb1aM4k3WIsxmIywGQi1Bw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a/TjyPTpwYewQZrLSjKAqeIjz+U6WQnp5uFuFavJE9b5VwdfKo/Wr4hnUDCEBJcM9
	 DOxUKv1ByMKhFlMe0WAMIxBcvvKp2ZJJVKLE0RJ7t5iCQ7axHzqJQ34a6QRWQV61WD
	 wVVpmwFCy29iWlG5sp+U8tT00cCuxMIBnheMGBwGHidpsbgnt91ME6NRqHlvruaXPd
	 fhDEcEq6ItmXDBPFhLJkmt7vFRgzDvEQtxKzkQ/nn0OW/MbLKCSYST/D1Xx81+Z84g
	 9uV1azIFeGla5dBBsITSDKLCVRsGm//3E+zs3WRrIrIvmcRSD4WO+gz/JXu+2bWsNT
	 YCMbvdixV/Y8w==
Date: Wed, 5 Mar 2025 19:35:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH man v3 1/2] landlock.7: Copy introductory description of
 Landlock rules
Message-ID: <fdkyawdzsp7lalafgzws4vacewyw7jowji46coovpyx5xshnpx@jvegegspz4d2>
References: <20250303194510.135506-2-gnoack@google.com>
 <20250303195056.136777-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250303195056.136777-2-gnoack@google.com>

Hi!

On Mon, Mar 03, 2025 at 08:50:29PM +0100, G=C3=BCnther Noack wrote:
> +.P
> +The two existing types of rules are:

BTW, I didn't want to send back the patch for another revision, so I
applied it as is, but this sentence is likely to get outdated at some
point.

I would have removed the "two" from it.  But we'll be able to remove it
when/if it changes.  I'm just mentioning this for future documentation.


Cheers,
Alex

> +.TP
> +.B Filesystem rules
> +For these rules, the object is a file hierarchy,
> +and the related filesystem actions are defined with
> +.IR "filesystem access rights" .
> +.TP
> +.BR "Network rules" " (since ABI v4)"
> +For these rules, the object is a TCP port,
> +and the related actions are defined with
> +.IR "network access rights" .
>  .\"
>  .SS Filesystem actions
>  These flags enable to restrict a sandboxed process to a
> --=20
> 2.48.1.711.g2feabab25a-goog
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

