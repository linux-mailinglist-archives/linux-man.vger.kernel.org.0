Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 528D41F7DB2
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 21:36:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726363AbgFLTgr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 15:36:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbgFLTgr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 15:36:47 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFB3BC03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:36:46 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id h5so11002492wrc.7
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EzuxwAD2ShClfGLK/B/LJs4sM09f7Kf0n21Issrb1MQ=;
        b=gqAx9gZy141QiMThxnZpBJa408r8D3Jk4G2OrOR6VwrmKKzouvhE8uSC0sDxqAeMZh
         zFycfkCiWGLy0xQ5tg74viP4VEomqrPVLQiqh4rLrfpKYkQlce2PeOmzk5mdqU+lj8Ch
         d7tD20rBpkOcnej0Y9BUPt7hNCqQ5dZOlK0i5bLM88reU7KQ7/1838PZtFo+HqjTdsGu
         B7C0pESGYIvmrjgDGy4PL9uFs7vBUuj0dYf5rGSFhxkGMw+CPl4zwvW0svtDOWcW5nTV
         7gMvhtwwjOlysTu2zQ6ixFyb2H6mEh/CXx3cHzX2zqHPeVnlvxnIVqmpbsfJsR2n9zb1
         Jt9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EzuxwAD2ShClfGLK/B/LJs4sM09f7Kf0n21Issrb1MQ=;
        b=saiyFkQRXoD4vZIU9P9RzjwSx9jcTdm31gErA2PfLMl4Lim7vx4cbOkGNM/LlWxSRN
         gpMJs1QxyLThIjfqEGBovixswNSIvuYkqjwqtwyiD96y1OLk9GE8OcKxQqya1FRzAF+n
         zpZz/UrArTCQlgVR1rB9q4QRuCs8UF//m1rKBb0S8XEVgtHocBlZuJZCAnTv/l0SF1OZ
         FYKT9JV4YhgxB0lMIdsHEsf4JMG9yAWiD3MWwPLcFLY3aSgeKHHXtwb05qorNiRVF/Am
         JL45TeWRrSVAbIoCoPuderBodSsavUfeIlpPln+J4D8wlRXu39IWmlEabH4nsBEH8LzE
         WmmA==
X-Gm-Message-State: AOAM5319jyIXGlF76RCEbO7T8ZjCKJtYgbeVt6NFo9YlKnsqUadmucNF
        IJ23uv371zCxYuAE9K941nHtq0TwDA8=
X-Google-Smtp-Source: ABdhPJyVXTpr6r6fNzVcEeJVjVDD5XvQjoRZUXIgoV0So6iAuaa2Lk++ZaEDZY771fBAI7Kr5cUAsA==
X-Received: by 2002:a5d:4286:: with SMTP id k6mr15935554wrq.140.1591990605526;
        Fri, 12 Jun 2020 12:36:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id j16sm13536272wre.21.2020.06.12.12.36.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 12:36:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_list.2: ffix: add a missing third column in three
 tables
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200612191256.GA31381@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a673b31c-d563-6263-e604-80016af9155e@gmail.com>
Date:   Fri, 12 Jun 2020 21:36:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612191256.GA31381@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/12/20 9:12 PM, Bjarni Ingi Gislason wrote:
> tbl:<ioctl_list.2>:162: error: excess data entry '// MORE' discarded
> tbl:<ioctl_list.2>:201: error: excess data entry '// I-O' discarded
> tbl:<ioctl_list.2>:343: error: excess data entry '// I-O' discarded
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>

The ioctl_list.2 page exists no more. It was deleted in the last release!
See commit 3de87d46840d667f65ec8041c0aebff4f101f44e

Thanks,

Michael

> ---
>  man2/ioctl_list.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/ioctl_list.2 b/man2/ioctl_list.2
> index a8b0480ff..97e152fcb 100644
> --- a/man2/ioctl_list.2
> +++ b/man2/ioctl_list.2
> @@ -130,7 +130,7 @@ SIOCGSTAMP	timeval *
>  .sp 1
>  // <include/asm-i386/termios.h>
>  .TS
> -l l.
> +l l l.
>  TCGETS	struct termios *
>  TCSETS	const struct termios *
>  TCSETSW	const struct termios *
> @@ -192,7 +192,7 @@ TIOCSERSETMULTI	const struct serial_multiport_struct *
>  .sp 1
>  // <include/linux/ax25.h>
>  .TS
> -l l.
> +l l l.
>  SIOCAX25GETUID	const struct sockaddr_ax25 *
>  SIOCAX25ADDUID	const struct sockaddr_ax25 *
>  SIOCAX25DELUID	const struct sockaddr_ax25 *
> @@ -331,7 +331,7 @@ FS_IOC32_SETVERSION	int *
>  .sp 1
>  // <include/linux/hdreg.h>
>  .TS
> -l l.
> +l l l.
>  HDIO_GETGEO	struct hd_geometry *
>  HDIO_GET_UNMASKINTR	int *
>  HDIO_GET_MULTCOUNT	int *
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
