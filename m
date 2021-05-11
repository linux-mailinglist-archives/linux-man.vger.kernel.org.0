Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71E66379F0B
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 07:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbhEKFQ2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 01:16:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbhEKFQ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 01:16:28 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4623AC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:15:21 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so672817pjb.3
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tIty0gug4XHf0hnV4aOZJMdwLhSPmGyWnhllR/z9LBY=;
        b=DO79oEbiaG9DGpvYxhsR8piKTndIUaijKjTzHxqrB2hZxMwvRSLxQ/Ciz9t1hKxb+V
         kfwFgujVl5HRCQdgHFP7DZE3Tt+38aU52zEG5LKazAA4xzpcZl/npOFYNo66Fnkt8coN
         Ogp0PmXPiEjVy7WQIp1/TxhY2fBPk1xKu/+KvodrIQSi/cFl4WKOUx+OIeTinDTbPrBN
         eQ67h9QNGK3U1BUdpbYqUx/mQ+NxoyNyNtfR0WpnC5E6wYpom3okV1LTbL/W3wYLsamz
         59jf3aAAzqoLiIGX3dK/D7U9FliwXQi7oyUwuIvV6lbMnwzlQl7QBcenuJEIT93BY6iS
         JvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tIty0gug4XHf0hnV4aOZJMdwLhSPmGyWnhllR/z9LBY=;
        b=QqAxAlGoNORmKZsoA4nkECkZNti5+OPpM5eI05yeleanWgwVtIQb0pd7cgb7YPqXw2
         bNLgTH5ew0sS0ZggImhT6Oc/fY5UvzXvRPHJVNHIeTlZEiXhl33pOw3XZKgiQb+Sk+BB
         xk0Hleb70Fhxe9uq1zqtNYrnUH+ngv0+DcFjGxD9620cRIsvi0MEvd6eVWgPN4PfW9FF
         2LxqxkJbasaPL9tePdlVu7IAp7UAkqU7C2Nm+XCUHocG3uYH8zZ+BsLWKRIgavkVVCAU
         0EC9D9UQDNS+Bz0McPYGqrqhOrY6WTmU6n/3ylvcEiDG/EnqtROpA5TDyfhk82sjkY3I
         KTpw==
X-Gm-Message-State: AOAM531XO1hPbFT6rvrYB/zE3TW1TRGhqapntGCvLnYp6ZkuJ+kSNutl
        TlMoGJF4dBcRbySAVFt5XDY=
X-Google-Smtp-Source: ABdhPJyJ4VY1lv2rDJmtEwD368yvb7IMgj7OVVjfOsky1HI3v7z9qb9x7FoqMnqKji+/GQqfgbxk4g==
X-Received: by 2002:a17:90b:17cd:: with SMTP id me13mr3163425pjb.128.1620710120784;
        Mon, 10 May 2021 22:15:20 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id x9sm12702478pfd.66.2021.05.10.22.15.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 22:15:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 26/39] open.2: Remove unused <sys/stat.h>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
 <20210510175546.28445-27-alx.manpages@gmail.com>
 <c4ef60cb-d8b0-fa14-3ebd-25c5732ed2aa@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <857f16db-d02a-2f25-7b91-464f356fdd1f@gmail.com>
Date:   Tue, 11 May 2021 17:15:15 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <c4ef60cb-d8b0-fa14-3ebd-25c5732ed2aa@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/11/21 6:02 AM, Alejandro Colomar (man-pages) wrote:
> On 5/10/21 7:55 PM, Alejandro Colomar wrote:
>> I can't see a reason to include it.  <fcntl.h> provides O_*
>> constants for 'flags', S_* constants for 'mode', and mode_t.
>>
>> Probably a long time ago, some of those weren't defined in
>> <fcntl.h>, and both headers needed to be included, or maybe it's
>> a historical error.
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Drop this one, please.  (We discussed it yesterday.)

Okay.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
