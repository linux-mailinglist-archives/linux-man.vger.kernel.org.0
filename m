Return-Path: <linux-man+bounces-4324-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E333C83166
	for <lists+linux-man@lfdr.de>; Tue, 25 Nov 2025 03:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0502F34B573
	for <lists+linux-man@lfdr.de>; Tue, 25 Nov 2025 02:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F200919B5A7;
	Tue, 25 Nov 2025 02:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="U2x5JRV+"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163D549659
	for <linux-man@vger.kernel.org>; Tue, 25 Nov 2025 02:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764037565; cv=none; b=SENHsBj2aT13kQ4AM5Y5KC5G5ydMv4X5Qq6nYE12VBgc6/eHGjJNTf0EHaeGvWrvL+gE2ZB+znx/9n/OKFiTg3/hzKTb3cuQZGonS6ztk+cexCc56OEGUMH5xcjXXtuK5dxrZAQUC6UfkwPPwytzXtNrq464f+GW1/8wwWsMtFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764037565; c=relaxed/simple;
	bh=5fFadGNastdo6M4mM1r/Njzp+ANsF4Vky4T/LM7hqoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hGLaD8J4frBJwTRUHy5CkS5FQX1h79KRx/DUTA8PIfGuwfoT9s6JDp8zFOeeQgnNuVkyjyXQTQ88DZ8Gr/ls4e7uWe7zs/hR4iYcqt9H5NLm48f4WNkku++hbne/geKVaXDU2SvXG4q3kPBqCS15itGuU6y9zTtegGzALOjbOsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=U2x5JRV+; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764037561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ojjqqdKTW7eYrTv//vSZ4OcF/GXhkbr0suhwouqydXY=;
	b=U2x5JRV+2yelmBgse3IL5pDo4JI8SXOgSoENj16LaAI8X3wKtBcEtHr0yodXVxmZeWgzrZ
	mGac+XHnTh/+oO9qFoChJaMw+VDMNTD3rzOxgKeP8FK0er6eFZOpYntNv/LgfLO0vk/HFz
	+mLzY6MBXriPanCNJK6NSrE44FcvsQs=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-26-4VrEPvoNNDaARZBqPD-q5w-1; Mon,
 24 Nov 2025 21:25:55 -0500
X-MC-Unique: 4VrEPvoNNDaARZBqPD-q5w-1
X-Mimecast-MFC-AGG-ID: 4VrEPvoNNDaARZBqPD-q5w_1764037554
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3A4E2180047F;
	Tue, 25 Nov 2025 02:25:54 +0000 (UTC)
Received: from localhost (unknown [10.72.112.114])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1DDE51956056;
	Tue, 25 Nov 2025 02:25:52 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:25:49 +0800
From: Baoquan He <bhe@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, chrisl@kernel.org, baohua@kernel.org
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
Message-ID: <aSUTrQFzmGwheWgz@MiWiFi-R3L-srv>
References: <20251017123110.321638-1-bhe@redhat.com>
 <wepvktnkiofwnp2xyifkr3mcs4gjdqafvvydyelv5wurmedrnv@zqn7e5g6ksmj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wepvktnkiofwnp2xyifkr3mcs4gjdqafvvydyelv5wurmedrnv@zqn7e5g6ksmj>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

On 11/24/25 at 05:56pm, Alejandro Colomar wrote:
> Hi Baoquan,
> 
> On Fri, Oct 17, 2025 at 08:31:10PM +0800, Baoquan He wrote:
> > This update the description about default priority value which is
> > changed in kernel.
> > 
> > Link: https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/
> > Signed-off-by: Baoquan He <bhe@redhat.com>
> > Cc: chrisl@kernel.org
> > Cc: baohua@kernel.org
> > Cc: alx@kernel.org
> > ---
> >  man/man2/swapon.2 | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> > index df5e8d8c7ec6..20e213827733 100644
> > --- a/man/man2/swapon.2
> > +++ b/man/man2/swapon.2
> > @@ -60,9 +60,8 @@ These functions may be used only by a privileged process (one having the
> >  capability).
> >  .SS Priority
> >  Each swap area has a priority, either high or low.
> > -The default priority is low.
> > -Within the low-priority areas,
> > -newer areas are even lower priority than older areas.
> > +The default priority is the lowest,
> > +and all default areas share the same priority value, -1.
> 
> Please document the old behavior in the HISTORY section.

Sure, I will send a new version once the relevant kernel patches are
merged into linus's mainline kernel. Now, it's in Andrew Mortan's MM
tree, the commits are temporary.

Will add the old behaviour as you suggested in v3. Thanks a lot for your
suggestion.

Thanks
Baoquan


