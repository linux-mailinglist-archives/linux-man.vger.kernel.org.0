Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B457339BB0
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 05:12:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231597AbhCMEM0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Mar 2021 23:12:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232230AbhCMEL7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Mar 2021 23:11:59 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0941FC061574
        for <linux-man@vger.kernel.org>; Fri, 12 Mar 2021 20:11:58 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id e26so3186869pfd.9
        for <linux-man@vger.kernel.org>; Fri, 12 Mar 2021 20:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qWiDq4jSRZR7wAW3oewbbRaNjxqrB2E2+avnA0lFAqE=;
        b=EAmxMLttqCPunIPR4apDgwX/yc2+VLKn/dJkv36ZGLnxIhqZx6+nWR8UKznLd4ajIp
         Z7w2JzY3lyOZ4dFIuOl882ssSm29iOiXURVJjz9hygwkZA3Veonx3L8S1vS5CgYJf4Sx
         HQT02MamANd+fORqlDGn7fo6rIdsXiklOOec4d3cUvAmb4T84sXfz7IEkd0+piyPDzL9
         s82OhaoLMbnQhJRRp1Z/RPTHSy83p/lvPwdLz3/O6LTuzwNj/Z8KMyvyV1osfQrhHW6j
         t9fQbwwE3HVEYGQzow6LnEHowF0aolNFsGiXcWPOYv4rkXA7GsfYOfpRq+g0tzYcH6AJ
         aFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qWiDq4jSRZR7wAW3oewbbRaNjxqrB2E2+avnA0lFAqE=;
        b=G3kqIJZ8vFu0I+r4pDzUVvQVrq2TOtGB3j6FCRl+6U/Fwz7V1+52FqlUAL3egeiDl1
         fuBoYMSq7MMvjNYoY6ejwwRB4ggBEcYfbPuXg3wWH8LFw0vHyB50CNdFT9DcLmuAvIRi
         /FcEFle+l3xzWuQYuE6kdKjJBEfWWGZC3ViPYvZoQhpI16RLFksPS4bYuqAV2XUpTVnt
         96d6JCBJMWxB9rfWytiV41R/mYXTv0p6TiiA6RJvFOS407B07UsXaOIcIbzWqWDvJVCm
         aWeIC59aLZul3nmDzmRj82d7QHuxSmxauvL7pkE5LRN0U38iBHc5u08pkGLDsw+Vbq2l
         CqIQ==
X-Gm-Message-State: AOAM5311rkRVUqz+WClm0cBN/xnUlOQdyztQBJfj/8QWhHA8YjnTnswh
        ZAndYx+9ycnXKc+H4ksEFAs=
X-Google-Smtp-Source: ABdhPJz7GNXwLEQw8DI+x/uIadC40fMgXyJ6XjKBSq3Mvdu+b6U5cb5dUoi1uHWw7JMs+YE3aUbxgg==
X-Received: by 2002:a63:a54f:: with SMTP id r15mr14563110pgu.430.1615608718273;
        Fri, 12 Mar 2021 20:11:58 -0800 (PST)
Received: from google.com ([2620:15c:2ce:200:a1e7:6707:cbf6:696d])
        by smtp.gmail.com with ESMTPSA id g22sm3347010pju.30.2021.03.12.20.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 20:11:57 -0800 (PST)
Date:   Fri, 12 Mar 2021 20:11:55 -0800
From:   Jonathan Nieder <jrnieder@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/17] man3: SYNOPSIS: Use 'restrict' in prototypes
Message-ID: <YEw7i0CCDyvm/KAu@google.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Alejandro Colomar wrote:

> This fixes the remaining pages. With this, all pages have been fixed to use
> 'restrict'.

Probably the context for this came earlier, but I didn't see it in the
commit message, I figure I should ask:

What is the benefit of getting this right for a human reader?  Does
knowing which pointer arguments can't alias help them in tracking down
some bugs, for example?  Or is it going to help them in some other
way?

Thanks,
Jonathan
