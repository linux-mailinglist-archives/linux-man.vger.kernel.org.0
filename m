Return-Path: <linux-man+bounces-886-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D21178BE0F9
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 13:24:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E2F6288E2A
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 11:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC57B152191;
	Tue,  7 May 2024 11:22:56 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC07152163
	for <linux-man@vger.kernel.org>; Tue,  7 May 2024 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715080976; cv=none; b=OqODZm3ovflab+HQdG7w4Pu2HZm0/WnhvP0daQdYzgxnCk1E14GaHmKfX0jZE904qZtcdUJUgXCtSh1BI+CT9G4XnbXxrLryBuXRQcXGYgs1O3Rs+X29FXy/kQBfNVhMsZexPHAXFFGbAJ7oFg/bbn1ozYhDp5IqfTbcpEDhomw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715080976; c=relaxed/simple;
	bh=VNG7K3hXPIufehEb1VL7zQZSctT9uCHMuJjMP3gKza4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kXQJrI7iEOeVAhvv/69T8uS8jmdSg4oTiti0wPJxIHYqDmQC6rukG3T7QzeqEqdzd4XtFuw9aPm8u5p5tFs+4QiVeLnnCoCsYPj9yomc87KgY0YEiPnL/DWUKAcYeyDlb0yiFj4/WCJdBzEsyllOmzVsi6ulNr/72/vR2K6FV2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=strace.io; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=strace.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
	by vmicros1.altlinux.org (Postfix) with ESMTP id 2D35F72C90D;
	Tue,  7 May 2024 14:13:07 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
	id 16E6C7CFF28; Tue,  7 May 2024 14:13:06 +0300 (IDT)
Date: Tue, 7 May 2024 14:13:06 +0300
From: "Dmitry V. Levin" <ldv@strace.io>
To: Jiri Olsa <jolsa@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCHv5 8/8] man2: Add uretprobe syscall page
Message-ID: <20240507111306.GA21812@altlinux.org>
References: <20240507105321.71524-1-jolsa@kernel.org>
 <20240507105321.71524-9-jolsa@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507105321.71524-9-jolsa@kernel.org>

On Tue, May 07, 2024 at 12:53:21PM +0200, Jiri Olsa wrote:
> Adding man page for new uretprobe syscall.
[...]
> +.P
> +Calls to
> +.BR uretprobe ()
> +suscall are only made from the user-space trampoline provided by the kernel.

typo: suscall


-- 
ldv

