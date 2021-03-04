Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC1D632D77D
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 17:15:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235982AbhCDQOo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 11:14:44 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:58220 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236843AbhCDQON (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 11:14:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614874367;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=IYwWU2u1cMcJa2Xo3YoetpEdqTSLPjrDCfoLSDezE1I=;
        b=AxlZjwruJzR3sEhb8O+VYDaiDMqi2apcQQNO+IC94O76CE3WowX6oFSrgq+ecjz+QyvvnV
        d5j15UQK2i528andsKGeiD23SkWOCCoEj8lHfiOuXbJFVa2V6IlqWJ5p2Oj15pD2RgFpMj
        y1v2j1/SdBzULWxazTVL6UcEOIDOTMY=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-PVrCds-7MAixO63AhktyNQ-1; Thu, 04 Mar 2021 11:12:46 -0500
X-MC-Unique: PVrCds-7MAixO63AhktyNQ-1
Received: by mail-qt1-f199.google.com with SMTP id k1so19312404qtp.12
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 08:12:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IYwWU2u1cMcJa2Xo3YoetpEdqTSLPjrDCfoLSDezE1I=;
        b=XyPqb5v/tmnHZi2tQptAtyLPuNZORMxbnkfJLytGb69nl8M+3qSdduoVwNjFIE/KFz
         yizsdsFslq0FsESNsYtYbnOhmliGutrTkRSzA0o2vzvcn9VYIDyVOCd+iBhRP5m7CWPw
         wOwaCbxCMGMtaR6rENFaAR2V+T/GxX+HouUaB/ejW4dAiBX9/N1NitgO786XypzrOPhh
         oJeUKNBGLcEsJmt52z5dXNMfYEiSl8V7p7IGbiG09k2gmGGfNVldI4BzhwFHW/H0i062
         ecFpjA1VQW1CxOwRmWeEJYmjCpEnbyINfdQEOhnBmlsS9gDMoIIMZQ5lvIZbHY49040X
         uPrA==
X-Gm-Message-State: AOAM5303kWJWK1+Fi1SOOjr6ueF/ELLSvEM18KcQEI9RriArd9BYdbWz
        abY/H7Uj93SXnqtGzeTKIwOuSkNNhasG8fSDa5y5N3PsWBBLbf4Pov/lmadNA7K94xzMWjK8uz4
        BwqncvIuTwNtxKxujEyl2SuLBtfvwine0zyHzZAmZcAmOB1paDpaUiJOWFvvkqgp3rhrMhg==
X-Received: by 2002:a37:bc07:: with SMTP id m7mr4592048qkf.58.1614874365455;
        Thu, 04 Mar 2021 08:12:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxXn2Sp423cDssLqlGJv3agRA1znE4R8cjgXXrJcM2+dmFVO+SShoUWpOGbwaGdDOoOQweErA==
X-Received: by 2002:a37:bc07:: with SMTP id m7mr4592015qkf.58.1614874365189;
        Thu, 04 Mar 2021 08:12:45 -0800 (PST)
Received: from xz-x1 (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id b7sm19837826qkj.115.2021.03.04.08.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 08:12:44 -0800 (PST)
Date:   Thu, 4 Mar 2021 11:12:43 -0500
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
Message-ID: <20210304161243.GA397383@xz-x1>
References: <20210304015947.517713-1-peterx@redhat.com>
 <20210304015947.517713-5-peterx@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210304015947.517713-5-peterx@redhat.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 03, 2021 at 08:59:47PM -0500, Peter Xu wrote:
> Userfaultfd write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man2/ioctl_userfaultfd.2 | 74 +++++++++++++++++++++++++++++++++++++---
>  1 file changed, 70 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index 1965d1932..3feb888a8 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -208,10 +208,11 @@ signal will be sent to the faulting process.
>  Applications using this
>  feature will not require the use of a userfaultfd monitor for processing
>  memory accesses to the regions registered with userfaultfd.
> +.TP
>  .BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
>  If this feature bit is set,
>  .I uffd_msg.pagefault.feat.ptid
> -Will be set
> +will be set to the faulted thread ID for each page fault message.

These two changes should belong to the previous patch - will get them fixed
too.

-- 
Peter Xu

