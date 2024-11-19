Return-Path: <linux-man+bounces-2051-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E33599D310E
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 00:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A82EC283DFA
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 23:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894C51D3565;
	Tue, 19 Nov 2024 23:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvMdhXuf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487CA1D270C
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 23:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732059973; cv=none; b=DafFKiqWflffonsbWQ8RPo2VycVYiYko+D1c23BePGICJX/jUVlrqw9TDm16/BIgNxRku2NS61/By8o6fuf4xZvvYtoAmeD+478Udc1AglUCgHln7zDjF3udTwn/wi70Wlhh66/xnvpmVg3rP//+ap9UwNH4F5Or3c5VI9k68ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732059973; c=relaxed/simple;
	bh=3XRqJrmhfNSlbhWweUEw4wqdwJ1e7ndFABYcTE8azT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Clx8fSLmVK5MTks/6budxo3stfmzDl4yyg0l+1cDYfjX4lYCXkWB67Ua+btNe3YKmMYEpMMkC3hECszztkNlbe+nzA7zDTZqIotZLtzcvzUN1JfIfD1GTRA7PEyL3zzAao/VC8eU97DDvsy8SfxE9WXWb8nKARI7mQKp5S7vm5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvMdhXuf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7196C4CECF;
	Tue, 19 Nov 2024 23:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732059972;
	bh=3XRqJrmhfNSlbhWweUEw4wqdwJ1e7ndFABYcTE8azT0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bvMdhXuf/QDHByH+BjqfA/Av23K3JsPI99qZW4J0jwtEmksN7rVQm3gI4SNGZJZf9
	 htWWsqAp64BVedhatxcRDme4EmriHphfsockhLRkADTqzffscqwGH0vPYENXDA8wct
	 2uneFoSi4LWwGdb7DnFx90dXR6704Mkpddy8dMGVdFv6StpucCG6LuSioDq46rBF1L
	 Bqd6rcetzBzBSWFv72xkHiAzPsxSW9SPU52ZHU9vTLzauM2DJt6TptI9zwhlRhblFM
	 BzuATpzdB7/O/UIEn+s4woJQD9ssl/yxmmKIWlg1Y/wBDryl7Xnalj6zcsAOrR2UP0
	 DsMhhUWQwotuA==
Received: by pali.im (Postfix)
	id 7C4B3598; Wed, 20 Nov 2024 00:46:04 +0100 (CET)
Date: Wed, 20 Nov 2024 00:46:04 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: Improving alloca() manpage
Message-ID: <20241119234604.6texs2xhpdertyia@pali>
References: <20241119115502.ayz7gpdgxdof2ebp@pali>
 <20241119122114.6ymh45rvviny3nmk@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241119122114.6ymh45rvviny3nmk@devuan>
User-Agent: NeoMutt/20180716

On Tuesday 19 November 2024 13:21:14 Alejandro Colomar wrote:
> I've applied a slightly different wording, but yeah, LGTM.
> 
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib>
> 	commit a6e8435b161a513576ce39f524f4fbd3eb621fe7 (HEAD -> contrib, alx/contrib)
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Tue Nov 19 13:17:27 2024 +0100
> 
> 	    alloca.3: Clarify that alloca(3)ted space is deallocated when the function returns
> 	    
> 	    Reported-by: Pali Rohár <pali@kernel.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 	diff --git a/man/man3/alloca.3 b/man/man3/alloca.3
> 	index 0d079ac1d..0baf8f1ce 100644
> 	--- a/man/man3/alloca.3
> 	+++ b/man/man3/alloca.3
> 	@@ -87,7 +87,8 @@ .SH NOTES
> 	 is
> 	 .I not
> 	 automatically deallocated if the pointer that refers to it
> 	-simply goes out of scope.
> 	+simply goes out of scope;
> 	+it is automatically deallocated when the function returns.
> 	 .P
> 	 Do not attempt to
> 	 .BR free (3)
> 
> Thanks for the report!
> 
> Have a lovely day!
> Alex
> 
> P.S.:  Please use <alx@kernel.org>.  I'm deprecating my google accounts.
> 
> P.S.2:  Please remember to CC linux-man@.

Thank you for very quick response and fixup.
And sure, I will do both PSs.

