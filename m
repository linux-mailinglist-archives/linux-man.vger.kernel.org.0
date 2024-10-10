Return-Path: <linux-man+bounces-1790-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BC69983B7
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 12:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 817081C214AC
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 10:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4812B1C0DD2;
	Thu, 10 Oct 2024 10:33:00 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cygnus.enyo.de (cygnus.enyo.de [79.140.189.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355131BFE0E
	for <linux-man@vger.kernel.org>; Thu, 10 Oct 2024 10:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.140.189.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728556380; cv=none; b=sLKKwuEIwKf0SX2Umot/xLDNWmjdsRq1AiRelQXPnZ3wtjjmedrqy1pV7MWxSG2+vrpLohMKDiNRMAPtMq20zwN7SqibyEbfg/PEaNkaZ9Pw8IrUWchuT2dJese2mk46ek+L2ZvTOxJC9FXKsZ6mJQA0VQc389ekbFGKLcEblsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728556380; c=relaxed/simple;
	bh=nmri6eB67FHXITrAv6P8tn1BwXkJigQyy3PLSOdcqow=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=tf2t8IKia0/iHC4ZssLbX5dZ2iy+6/WhnozPUcAF6TiUweYeMhLiXHoxNTDLCZy4RyMOPPUUA5dzNDr0KCX5w6wA/g3Tl0PzFp8/PGTmZKSlJaxPoCVob5+2Y915JiMyq4T5DLMzq/sivp62xBHr7vBYYjvgk/dElGQaYAkDB7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de; spf=pass smtp.mailfrom=deneb.enyo.de; arc=none smtp.client-ip=79.140.189.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deneb.enyo.de
Received: from [172.17.203.2] (port=53291 helo=deneb.enyo.de)
	by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	id 1syqTT-00092k-2E;
	Thu, 10 Oct 2024 10:32:51 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.96)
	(envelope-from <fw@deneb.enyo.de>)
	id 1syqTT-001F7M-1s;
	Thu, 10 Oct 2024 12:32:51 +0200
From: Florian Weimer <fw@deneb.enyo.de>
To: Jan Kratochvil <jan@jankratochvil.net>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [patch] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERM
References: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
Date: Thu, 10 Oct 2024 12:32:51 +0200
In-Reply-To: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net> (Jan Kratochvil's
	message of "Wed, 9 Oct 2024 20:53:22 +0800")
Message-ID: <8734l4fdt8.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

* Jan Kratochvil:

> +\fBEINTR\fP
> +\fBpthread_cond_wait\fP was interrupted by a signal.
> +.RE

POSIX specifically disallows returning EINTR.  Applications cannot
expect that pthread_cond_wait returns upon delivery of a signal.  Such
a return is only possible due to the general allowance for spurious
wakeups, and must result in a zero result.

