Return-Path: <linux-man+bounces-1478-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 811C093297F
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 16:45:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3678C286696
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 14:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 573DA19E7D8;
	Tue, 16 Jul 2024 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="Vzt8F2xr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-42ae.mail.infomaniak.ch (smtp-42ae.mail.infomaniak.ch [84.16.66.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F4419E7D0
	for <linux-man@vger.kernel.org>; Tue, 16 Jul 2024 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140717; cv=none; b=ShLa8/OlntznLy4pgLs8Cms/WXJCP3ou4zBwtIdE+PApJHlMImZ+rSCXagRn/cfF8h4W81mLfLjZOJxhgd2dsoSiq7wi/qYb9sVZ1udurg28ptlq+DOU1FO2LI5RDrv/qmUmR8gojm91f3aA23LiBdQMOY87BC6adJ0a102SP4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140717; c=relaxed/simple;
	bh=9b6WdFnSmtI54umaWvTDL1tvPp3C9tL/bhOIo89qUL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dh698MgrUNO6lC1OFh4WdB3mutWVqFgdSgg6WyCgJPgKwp1t2z405ifodoJhU+rYjZfr9BjcefW8DOY+9dqW7X3spmyrYWRyPOLjPUKYauoeW9Jyo86/eJmlR9HBrxxd740c47+hTHynR1o/z2CkirtQPiRgldRD5ftDW1dJUM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=Vzt8F2xr; arc=none smtp.client-ip=84.16.66.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WNhWj5WXHzmpJ;
	Tue, 16 Jul 2024 16:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1721140705;
	bh=9/F/FhPNmgB81pfg9LPzavbMB9/9A9hK0whlFlG+Qsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vzt8F2xrkIivr9/v+yiVtPhsGo6CH+yD7V4d+vQXCAEXR+sT3jwcpGfM1Vin7B1QA
	 uhO9kqav22psuMadNPFRl7kP75mp34DHXbOmRWjnNF7hnfYWXr/dZaE1UOUcJ9VCBm
	 tWePEUApEJ0WhGPw3ZzYSZ9a9qoTOTi1BfRPy5Dc=
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WNhWj2VTdz6xv;
	Tue, 16 Jul 2024 16:38:25 +0200 (CEST)
Date: Tue, 16 Jul 2024 16:38:24 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 3/5] landlock_add_rule.2: Document missing reason for
 EINVAL
Message-ID: <20240716.aezec8Cohp7i@digikod.net>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-4-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240715155554.2791018-4-gnoack@google.com>
X-Infomaniak-Routing: alpha

On Mon, Jul 15, 2024 at 03:55:52PM +0000, Günther Noack wrote:
> This documents a missing reason for why EINVAL might be returned.
> The documented behavior exists since the first version of Landlock.
> 
> Cc: Mickaël Salaün <mic@digikod.net>
> Signed-off-by: Günther Noack <gnoack@google.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>

> ---
>  man/man2/landlock_add_rule.2 | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index fa0b1f109..530b45947 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -101,6 +101,16 @@ The rule accesses are inconsistent (i.e.,
>  .I rule_attr\->allowed_access
>  is not a subset of the ruleset handled accesses).
>  .TP
> +.B EINVAL
> +In
> +.IR "struct landlock_path_beneath_attr" ,
> +the rule accesses are not applicable to the file
> +(i.e., some access rights in
> +.I rule_attr\->allowed_access
> +are only applicable to directories, but
> +.I rule_attr\->parent_fd
> +does not refer to a directory).
> +.TP
>  .B ENOMSG
>  Empty accesses (i.e.,
>  .I rule_attr\->allowed_access
> -- 
> 2.45.2.993.g49e7a77208-goog
> 

