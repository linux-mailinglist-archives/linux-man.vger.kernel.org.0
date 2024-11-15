Return-Path: <linux-man+bounces-1919-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D169CDA62
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 09:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65E421F22B95
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 08:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB4516EB4C;
	Fri, 15 Nov 2024 08:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="MpMZYxG4"
X-Original-To: linux-man@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472972B9B7
	for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 08:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.51.188.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731658904; cv=none; b=pY1IiK2lgQ86mVZ0CdPVNdiBgEeJAelKZIJDvJGnUCXaOCr5FDO5Gv9Km8Fmx8TfFgzrTt4iSjn15G1+pL1w+NAnJpkUpJ5NigqHQlZ52UVvvS9TK/V6YdxuBSJndXDHw0kOtFOLV3Wm1RJob6rm8MU9AjwL4bgwVxTWX/xbs6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731658904; c=relaxed/simple;
	bh=XM6a7NK7IKjRkmJE6f5scOwISUpTGhUF9sT87SrSx8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j8mii7G4jwN+CdPLeOisZHoJYkFYQBVBgIf+Kb22g5zzFpTLSEU/x5l56E2jmjuVIQRhNXd0c/WuoO/YfOTqeA6EK7IT73nS+QTy+t22kDELfw83OnFp3iGnhm1LJS6myp45EFgmYR6t+WRCSzHBjI5MKYq6mpZy2HkZ+Sykd1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org; spf=pass smtp.mailfrom=gnu.org; dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b=MpMZYxG4; arc=none smtp.client-ip=209.51.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <ken@gnu.org>)
	id 1tBraE-0000mn-NV; Fri, 15 Nov 2024 03:21:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=In-Reply-To:MIME-Version:References:Subject:To:From:
	Date; bh=/Kd/z36OwA4bAPjZx5QP2lRXk1zNd1dZvq+1Oofmfy0=; b=MpMZYxG44DTd2PwFR16O
	yvqeIZ+bcpg+u/LMXEX4KEHGmBBv8zbg8PVNmk19Xwpz60BzbmJNQYw2iqTy/ht8eLgazRbjRk7Ps
	eDqFM+vN9u1BtbZy7IDSo1dzqfRqgPr/rowIju8kr+U7NKaXYJ44YZLOGtNPVIFKTNGsxCaH6HM4Z
	xkIwDEXH3ze4QPd9btd9kG4VboDMG9xWUEg+Ar2viFrwVWzGXoNPa5USs/KpxVuscbGxPzkqw/7fR
	n/HQMBxZsEdRX/+uC4STHWxpFzLC29VEfBnbXu8nqbsRuL2coQHzYMU8HCleo5PHsyixeDihXCUFT
	m7YAD+EM6w9J/g==;
Date: Fri, 15 Nov 2024 00:21:32 -0800
From: Ken Pizzini <ken@gnu.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 0/2] improve description of %a in printf(3)
Message-ID: <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>

Okay, trying again using git-format-patch...

I was recently trying to work with the %a conversion specifier in
printf(3), and found a couple of issues with the man page:
   1. The references to "decimal point" in the context of the
      hexadecimal representation of %a strike me as wrong;
      the first patch changes these to refer to the "radix point"
      instead.
   2. It took me some effort, ultimately having to track down a
      copy of a relevant standards document, in order to discover
      and be confident about how to interpret the "d" portion of
      the output; the second patch adds some clarity on this point.
      (This text incorporates the change suggested by Jonathan Wakely
      relating to my earlier, not-git-am-friendly, submission.)

		--Ken Pizzini

