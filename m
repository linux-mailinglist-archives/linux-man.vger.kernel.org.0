Return-Path: <linux-man+bounces-2533-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0402A481FA
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 15:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 279973A3B3B
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 14:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38CA925B66D;
	Thu, 27 Feb 2025 14:49:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cygnus.enyo.de (cygnus.enyo.de [79.140.189.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A9225A33E
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.140.189.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740667758; cv=none; b=Zm6GS1FGfp6Yjtq2w10XabaJPo8tRgSdYs3iV9aNQiBfNNHeRwS3d33bjYcHl5WHocdV69L16jpvxj0ybRsbfuqXtztNtWdrnHswHah2e9A5fD2lCJTgC4VWJbzbbRvOQv+pMWAKHxtaS8ORIqZAfdSNGujoVLkcJIin75/JGYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740667758; c=relaxed/simple;
	bh=f8P4L7JpR/jkYR7uu6kNyIiujUouZ/SYNfiePnbyqpY=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=PmgFchV1lKd1sSicWlyT9qac/VZQzqtuvbgYM4zYaaRh85RYLYTVpc1FYNl99T5nnDmZ4V/opyBY9te8nStJJ5y4TIih3hrzGWDqIi94FVZq2Oo6Jspv8ugV58ntpkWQQHUGLIHhlWBdUYNWCMq1lSZrGe/spCGRqU/QVHYu2U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de; spf=pass smtp.mailfrom=deneb.enyo.de; arc=none smtp.client-ip=79.140.189.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deneb.enyo.de
Received: from [172.17.203.2] (port=41611 helo=deneb.enyo.de)
	by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	id 1tnf6n-005I56-0U;
	Thu, 27 Feb 2025 14:43:29 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.96)
	(envelope-from <fw@deneb.enyo.de>)
	id 1tnf6n-005Lap-07;
	Thu, 27 Feb 2025 15:43:29 +0100
From: Florian Weimer <fw@deneb.enyo.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: Sergei Trofimovich <slyich@gmail.com>,  linux-man@vger.kernel.org,
  Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
References: <20250227092142.1822609-1-slyich@gmail.com>
	<5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
	<Z8BLSuhHpNxGgg0y@nz.home>
	<ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
Date: Thu, 27 Feb 2025 15:43:29 +0100
In-Reply-To: <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
	(Alejandro Colomar's message of "Thu, 27 Feb 2025 13:28:12 +0100")
Message-ID: <878qpr78j2.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

* Alejandro Colomar:

> Could you please try to find out the cause of the actual problem?  Maybe
> there's a fix that doesn't involve reverting that patch.  Or maybe
> there's a bug in some tool, and we can report it.

NEWS in GNU make explains this:

* WARNING: Backward-incompatibility!
  Number signs (#) appearing inside a macro reference or function invocation
  no longer introduce comments and should not be escaped with backslashes:
  thus a call such as:
    foo := $(shell echo '#')
  is legal.  Previously the number sign needed to be escaped, for example:
    foo := $(shell echo '\#')
  Now this latter will resolve to "\#".  If you want to write makefiles
  portable to both versions, assign the number sign to a variable:
    H := \#
    foo := $(shell echo '$H')
  This was claimed to be fixed in 3.81, but wasn't, for some reason.
  To detect this change search for 'nocomment' in the .FEATURES variable.

Applying the $H suggestion seems harmless enough, although this make
change seems to be fairly problematic in general.

