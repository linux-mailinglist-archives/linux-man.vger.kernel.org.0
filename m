Return-Path: <linux-man+bounces-4176-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 380F9BE8972
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 14:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7666585858
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 12:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35613A945;
	Fri, 17 Oct 2025 12:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IzC4hxD6"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FC8332EC2
	for <linux-man@vger.kernel.org>; Fri, 17 Oct 2025 12:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760704213; cv=none; b=D3/3w85kmvcNJ+HCbaVGT9ATFgYxANC2hqpe2S0e5S98cOA/i28ujdtsWi/IJcB2oN64KKQXL3jq+4xz5/gEemJ7RKtnoxo2eNPJLyLZyUqDfFl8Qqzxc9G/PcsdKHLg/rsGPJS0hcvflgasKLJyWwzp/oEHy3ft0/jCO5NkTAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760704213; c=relaxed/simple;
	bh=8xNtT5GdakxPadXNUHDt6lbYeHSEpHtpslqsb/WX2V0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M9Z6NA4BqwwQhdq9EwJS0z/nkmteXyQSXFtCZgUd7xicc2Y5MVEAkMiCuiycBpYh5FwMDTF0KgAZ12WMko9rejZEwswKRPlxS6ovqwP4i95VdK60XAJLdgj4L2DVVbhaeLfH7pGXydWQW+S3MsuvLf94rWIMsagHr+5LsREh008=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IzC4hxD6; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760704210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mDLP5cXKFDTEg++DOTlTFMsqtTnDPwj7k440dHEGW7w=;
	b=IzC4hxD6+ibATole5VyT1avLEt7Zk+1hw4uSnXxLwKzo1e14NjDzgQ6fJBpvRSK/l0y99x
	Mu5Rb31UBwAMTzJo/Nyhnzep2ij13M+mCvUlJIH88sjSmkZbJ1KGldVe6lmHKmBqb8eRl9
	2AIHsievB5I90vx0a62Dh+x6Y1mifro=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-584-ALP-wZM-OFSvZEaBcjXneQ-1; Fri,
 17 Oct 2025 08:30:09 -0400
X-MC-Unique: ALP-wZM-OFSvZEaBcjXneQ-1
X-Mimecast-MFC-AGG-ID: ALP-wZM-OFSvZEaBcjXneQ_1760704208
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E7B381956096;
	Fri, 17 Oct 2025 12:30:07 +0000 (UTC)
Received: from localhost (unknown [10.72.112.94])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6ACCD1800579;
	Fri, 17 Oct 2025 12:30:06 +0000 (UTC)
Date: Fri, 17 Oct 2025 20:30:01 +0800
From: Baoquan He <bhe@redhat.com>
To: linux-man@vger.kernel.org
Cc: chrisl@kernel.org, baohua@kernel.org, alx@kernel.org
Subject: Re: [PATCH] iman/man2/swapon.2: update the description about default
 priority value iman/man2/swapon.2: update priority section
Message-ID: <aPI2yT9Dm5/9CPEZ@MiWiFi-R3L-srv>
References: <20251017084725.318029-1-bhe@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017084725.318029-1-bhe@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

On 10/17/25 at 04:47pm, Baoquan He wrote:
> This update the description about default priority value which is
> changed in kernel.

Sorry, I carelessly kept one draft sentence in the subject. Will send v2
to fix it, hence NACK this one by myself.

> 
> Link: <https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/>
> Signed-off-by: Baoquan He <bhe@redhat.com>
> Cc: chrisl@kernel.org
> Cc: baohua@kernel.org
> Cc: alx@kernel.org
> ---
>  man/man2/swapon.2 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> index df5e8d8c7ec6..20e213827733 100644
> --- a/man/man2/swapon.2
> +++ b/man/man2/swapon.2
> @@ -60,9 +60,8 @@ These functions may be used only by a privileged process (one having the
>  capability).
>  .SS Priority
>  Each swap area has a priority, either high or low.
> -The default priority is low.
> -Within the low-priority areas,
> -newer areas are even lower priority than older areas.
> +The default priority is the lowest,
> +and all default areas share the same priority value, -1.
>  .P
>  All priorities set with
>  .I swapflags
> -- 
> 2.41.0
> 


