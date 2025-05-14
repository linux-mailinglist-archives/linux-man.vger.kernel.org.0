Return-Path: <linux-man+bounces-2919-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D45AB72AD
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 19:23:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 631687AFA06
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 17:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21454278161;
	Wed, 14 May 2025 17:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Wzb6dnkv"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993F1C8621
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 17:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243385; cv=none; b=j7i8cl9fPF4pAEzbWPOTWirtuzVS7aF8F2lijK1uA8p6uBbX/HEHduUOHqWOqNR92VTTZ57c+pgADo54qtPv+28igKQ+IeGr/dBJ4qRtvHP1NJNqqJtv6bxl7Izk21MNVMfva01/JMDf4GBZx7MEN/3lnTnQ8TbfYpsBkwfTO2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243385; c=relaxed/simple;
	bh=X4L9dP5e9Ou7Dht7qWV02nDeywOY9NeHjoxT0uRXMD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o9ALwh2L2CqZzgWk3bAuGzUlgeG7oAuGM/wOwNmazgRCOjlwUfZMf3LXG1ZY6c92sJW7sH00Fv+Kh3tWF642fbe2Fwrw2Y/nNg/p7mbbIV2FlqQKYYLGjjjoDvYqJmTcNenzwe5n+ltGUsXMgW7G/ymlw3yup4wrvEsv4zb2BKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Wzb6dnkv; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747243383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/oElXM1ODP5fr3xuW+gv4HSACPr/9xzmW3Yqp8drdpo=;
	b=Wzb6dnkvshPX3LPuhz2sJ78Rf+3Veu3xUMehp18KYCYgvqUJWCx/gQk/YF2vSSZqv8QFtQ
	G6hMVUk8Thsem5Py4zs6OCrRDM7NhJAFHR3HquMNhbMRr9R4OrgZI2w+FRcUGIESTXGcWA
	dGTEBeb7R95gkW2appzzJK+SmHcyC44=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-SZJKb1nMOCCMsKTO3si0cA-1; Wed, 14 May 2025 13:23:02 -0400
X-MC-Unique: SZJKb1nMOCCMsKTO3si0cA-1
X-Mimecast-MFC-AGG-ID: SZJKb1nMOCCMsKTO3si0cA_1747243381
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c790dc38b4so22010585a.0
        for <linux-man@vger.kernel.org>; Wed, 14 May 2025 10:23:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747243381; x=1747848181;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/oElXM1ODP5fr3xuW+gv4HSACPr/9xzmW3Yqp8drdpo=;
        b=pnTbdU6gzpegbNnBU38DQeur8V+DTrt92Vb/cEeHySbQKzRIE54WtA9MRC1bD/pvb9
         DZ/wa0rAufMafms2ZnNwzm/UzKPEXM+hNkXpHN0lZ1ikaE7guAgwTfd/iCjhR6NaowVj
         YVJvsqw+UJGXZ6G4rcIC2+GZyckwr54//JDy+fDP8M6ztCe6FLyl5r5dg6djebHO84Ds
         TiyfQN0I/0Od6gYNgx344qNJAUUtLLTyah37hC2dmC+FA/xrKamOlfeUkBX6bKmxNdnW
         R/NNrArR0w+xSLLiLZyQYWP0E1W2qCRLtGDSx7I67vecUaEcf4oh111K66+bzEbsymu5
         Jiiw==
X-Gm-Message-State: AOJu0Yx+zXZ+cf8NJ/KP2zP9djDaiSWCt0rnpnkZtZjQV/oh/oFdNGZ2
	ratbA73ANpKA/WWEZXQh5iaRV7h5OWm4hEe1RUWdLFMhgFrhA/0+I8N7h7WRC3ME+Cn9RKrwBNR
	8Ym4VD/zMMQJrW240FBtgYMiaSnDzlhGlXhwJRFoPuPDUQvbx8Cg+NzqVSw==
X-Gm-Gg: ASbGncstU2KUsDXEhDEigK+cK2eUJKjDqXlkNP+8T0sS5hhYMz9aVKv2VkMr5bDrVK5
	+JOOPWL2cJMUlP/Ou/C6Y8ei8bXh5/v3qmV1/lHKWDvhW2wOzfl9lPbqxqygH+9YtkvhICpBizH
	5m/8xg1ZIdsLVr+SIHvL3dj6WJa6dO2izy/8TU0UblaI9sGaeTPkBdOgMXV3QQbiounEYsszYQ4
	6K12feDOYcL/3yyMwCcWAGRm3X9Ko1z0LXBYOedO9LwWPLauwOm/XS49fGnQKzRmL5w5ABDF/uI
	D2k=
X-Received: by 2002:a05:620a:4256:b0:7c5:afc9:5144 with SMTP id af79cd13be357-7cd39e0b62bmr46161385a.23.1747243381550;
        Wed, 14 May 2025 10:23:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTGZ9NJoeSdVbaYm/syrhmviXCEheXcLINvfYcLnmeElUJOkvK5KSz5hTibErul8dXI9ys5g==
X-Received: by 2002:a05:620a:4256:b0:7c5:afc9:5144 with SMTP id af79cd13be357-7cd39e0b62bmr46158985a.23.1747243381236;
        Wed, 14 May 2025 10:23:01 -0700 (PDT)
Received: from x1.local ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00fe9909sm877643285a.113.2025.05.14.10.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:23:00 -0700 (PDT)
Date: Wed, 14 May 2025 13:22:49 -0400
From: Peter Xu <peterx@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andrea Arcangeli <aarcange@redhat.com>,
	Mike Rapoport <rppt@kernel.org>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org,
	Robert O'Callahan <robert@ocallahan.org>,
	Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_MOVE
Message-ID: <aCTRaebpHZjVJHut@x1.local>
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-3-peterx@redhat.com>
 <sxwdi5itwngdermj4w77ycwgyes4x7yyfl7v66mxj7co4xm6xm@27aqjwxvh4qk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <sxwdi5itwngdermj4w77ycwgyes4x7yyfl7v66mxj7co4xm6xm@27aqjwxvh4qk>

On Wed, May 14, 2025 at 05:02:57PM +0200, Alejandro Colomar wrote:
> Hi Peter,
> 
> On Mon, May 12, 2025 at 01:19:22PM -0400, Peter Xu wrote:
> > Add the entry for UFFDIO_MOVE in UFFDIO_API.
> > 
> > Signed-off-by: Peter Xu <peterx@redhat.com>
> 
> Should we add the following tag?
> 
> Fixes: d7dec35a3b19 (2025-05-01; "man/man2/ioctl_userfaultfd.2, man/man2const/UFFDIO_MOVE.2const: Document UFFDIO_MOVE")

Sure.

> 
> Also, I think the subject should mention UFFD_FEATURE_MOVE, or at least
> somewhere in the commit message.

I'll rename the subject to:

  UFFDIO_API.2const: Add an entry for UFFDIO_FEATURE_MOVE

I didn't know we need Fixes for man pages.  I'll also attach a fixes for
the first patch for commit a252b3345 ("ioctl_userfaultfd.2: Describe
two-step feature handshake").

Thanks,

-- 
Peter Xu


