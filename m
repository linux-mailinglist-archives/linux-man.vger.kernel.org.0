Return-Path: <linux-man+bounces-2444-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A972AA366DD
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 21:30:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E64EB1891FFA
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 20:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EAE51A2385;
	Fri, 14 Feb 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKTmtJg6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C164B19066D
	for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 20:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739564992; cv=none; b=rBo4+BK1E8s6hwiczE/q78mSVRR3OsvoZEyH6+y16+Kqk3kDyOxAMxShIPjMrrtJJDBn+OIbLnzmvJpxHaMGfHUuXnCbX0MChCh0b62F9Z/HQRJRYi6w9kgMfFjqbbMpAlBhMzoOpVb2kOa4BY++aChQ//Ulevo6a9RxVENH2PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739564992; c=relaxed/simple;
	bh=0VTG1CSJ+YnqOOTcILyfQuj5QSZytf6Y6Dp1ndP9iuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ob2iiuGOCQYfy9ssrzOlA7M+8ClinFCzoAiSlG+0o8t7MPl2gCtMzsDkESDnb+Q8wsZiwk9Qdq/XXSF3aupgocTPrz8Gn5y1Bu4A6k8hIDFaQBxOCQXxmsfHyG5QuoyodasC2Q65tbqXsglrneEAK6Q78A5vwV4Xwn7QfFR54f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKTmtJg6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1042DC4CED1;
	Fri, 14 Feb 2025 20:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739564992;
	bh=0VTG1CSJ+YnqOOTcILyfQuj5QSZytf6Y6Dp1ndP9iuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tKTmtJg6TM5p5Rp+qV1opVf27D1yh8CYagud+TrbBWh/WwmvgXdzw77EWgDWsdaVT
	 j0r+hA4LGMYqkL8UwIiKx8tacZG2JAQTb4cgpU13y0jT8IYtVXDsudsMvEhQzDtLdo
	 cIv4CvB9wH7iYu6Hmrj86cTLgU21SEFnsMR9RAuuk54l7LEhCiTGy3YEJ87kYMG1Qp
	 VUbbj9yDP7k4pFxybrYdBYkjtQ31I6npDdk4xRtroGfStC8h+X889JGvaZMfLvpa3L
	 bBADwRnVgKNfkAe6+ZpCPMdZ8ekcCdMoZ3js+IRb78tbtJNDEdhCJXoK+wZglsL5d3
	 +AeC3bwKMQgSw==
Date: Fri, 14 Feb 2025 15:29:49 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: kup(1) signature verification
Message-ID: <20250214-fortunate-succinct-hyrax-a47bea@lemur>
References: <tl6xmfafcnklhjp5xxjzrfigfptjx6gmlmgffg647urbdvsmpu@r6x2tdpxefl4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <tl6xmfafcnklhjp5xxjzrfigfptjx6gmlmgffg647urbdvsmpu@r6x2tdpxefl4>

On Fri, Feb 14, 2025 at 03:39:26PM +0100, Alejandro Colomar wrote:
> Hi Konstantin,
> 
> I've generated a new signing subkey today, and used it for a new release
> of the Linux man-pages project.

Key updates are not automatic, because the keyring has to carry my signature
(or, rather, a signature from someone whose key is directly signed by Linus).
I've pulled in your key updates, but if you would like it to be more
streamlined, please send in the key updates following the procedure described
here:

https://korg.docs.kernel.org/pgpkeys.html#submitting-keys-to-the-keyring

-K

