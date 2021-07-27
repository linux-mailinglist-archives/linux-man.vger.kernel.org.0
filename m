Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11DB13D7B28
	for <lists+linux-man@lfdr.de>; Tue, 27 Jul 2021 18:37:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230111AbhG0Qhd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Jul 2021 12:37:33 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:52250 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230031AbhG0Qhd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Jul 2021 12:37:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1627403852;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=2ANeePT+43ICSmK2dUrsUfTd9Zca9C1s5AnKaXEKa2c=;
        b=d8QMG8Y2d02pylZg8LGBaR1XgX+7nljkhd6ifUZ9TXeijRv1i93xorb+rCETFN9icIm43q
        CV2UF69Gj7YaydBodEYaENp6ddHcwcIsbunMWIU3o26ewFnFbB6kug8mPHmyhtYbg6o0tp
        5FFD85U/rbC+ugv/63dcuFLsjxLG6Kc=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-eb4CJi6fMnyAnI6AkxKAoA-1; Tue, 27 Jul 2021 12:37:31 -0400
X-MC-Unique: eb4CJi6fMnyAnI6AkxKAoA-1
Received: by mail-qt1-f197.google.com with SMTP id l7-20020ac848c70000b0290252173fe79cso6695355qtr.2
        for <linux-man@vger.kernel.org>; Tue, 27 Jul 2021 09:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2ANeePT+43ICSmK2dUrsUfTd9Zca9C1s5AnKaXEKa2c=;
        b=hZF+ChFKJ9ukBXR95k33eSe8IYiZrbYzcYKbfoec/SsesGMaIfKOEsR8iy8de/RdnW
         Zdf7R8hrXt6957ThzlfDGUUEwt5lLjGetXRZu78M+3xmv53Ae0QBTEUNO3Lr6ZRW+UFQ
         vuEWmtJWY8eSTOMVQMQ+ASkW239e63BKGFCQvI6f4gPTBvGUOZNvMB8r6L0K68W5xvIh
         f4yhYln7qZ9OZgIyaanEOJKVO5KV0oaWNSpUnIxDTSgqiXYBHJsRZskmppIjekkY6Qlg
         curqK4JWlsY2jB2Vi9jKq7VuA5LJyozrZb/et9vuH2hCV0iqTyBGlYMdtSU4IOa5O/1a
         kAlw==
X-Gm-Message-State: AOAM5331lfS+PgiHro6uKYySINBCXukEXxvrWNIJsHQbuaNe/eUWMPq5
        ZsOKFbMoBgPh54Fhg4cQ7yrNJ6VNbwtESdybxVUY65p+wUl+NjfFc5aOdnwPD2DHxBPpWfZq8t3
        S0+4Pr+Lwe30m48T/3eK7
X-Received: by 2002:ac8:5e51:: with SMTP id i17mr20344141qtx.359.1627403850662;
        Tue, 27 Jul 2021 09:37:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDQsbbsrXenTdjPv86mVGmdBOGQVu2pmX3xKpk7XYeSnBZwhGNzhI7fDt1yKeYtA38O9vNIA==
X-Received: by 2002:ac8:5e51:: with SMTP id i17mr20344127qtx.359.1627403850467;
        Tue, 27 Jul 2021 09:37:30 -0700 (PDT)
Received: from t490s (bras-base-toroon474qw-grc-65-184-144-111-238.dsl.bell.ca. [184.144.111.238])
        by smtp.gmail.com with ESMTPSA id x28sm1720510qtm.71.2021.07.27.09.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 09:37:29 -0700 (PDT)
Date:   Tue, 27 Jul 2021 12:37:28 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Axel Rasmussen <axelrasmussen@google.com>
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Hugh Dickins <hughd@google.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Subject: Re: [PATCH v2] ioctl_userfaultfd.2, userfaultfd.2: add minor fault
 mode
Message-ID: <YQA2SC4ecPh7cz7f@t490s>
References: <20210604195622.1249588-1-axelrasmussen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210604195622.1249588-1-axelrasmussen@google.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jun 04, 2021 at 12:56:22PM -0700, Axel Rasmussen wrote:
> Userfaultfd minor fault mode is supported starting from Linux 5.13.
> 
> This commit adds a description of the new mode, as well as the new ioctl
> used to resolve such faults. The two go hand-in-hand: one can't resolve
> a minor fault without continue, and continue can't be used to resolve
> any other kind of fault.
> 
> This patch covers just the hugetlbfs implementation (in 5.13). Support
> for shmem is forthcoming, but as it has not yet made it into a kernel
> release candidate, it will be added in a future commit.
> 
> Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>

FWIW:

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu

