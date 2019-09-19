Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3DC9B7334
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 08:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388233AbfISGez (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 02:34:55 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44666 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387712AbfISGez (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 02:34:55 -0400
Received: by mail-lj1-f196.google.com with SMTP id m13so2310701ljj.11
        for <linux-man@vger.kernel.org>; Wed, 18 Sep 2019 23:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DNxA93X+SscQRLoexODWDmBqG2Wj+XyZjLxhDbsJf88=;
        b=Vul8lOWlGXNPHiRGzN2mVexL/DfFaGVd+S0U0duI8JH2SQ9191YLBZG6Y0vRqw4sKD
         IL80RUvUCZ82MZzGFaYbTgMqK7Nb+EKSMH0EY9ta/V3tfirmQstBkWm8LW+qorNgmJiP
         s4Qb4DIjEVW3xdxg8RorYr42Wdp4IJJePqMG+hTIXS2cjqWV8sXGPhnWAiOEXQkaic1b
         g6RLl4ozn8/c8X2Wl7ZhpkFCIY4WbYq/DqfaeO3VQNjcK8YDQjkqNLu0P2rO1D3xA++Q
         P0Ri/bOc5r68b6gwK/NELr5hbUJgwElZzHpZE+4AUBdXoD9Vni4pR9Tg6cu39Eo2AL2i
         vIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DNxA93X+SscQRLoexODWDmBqG2Wj+XyZjLxhDbsJf88=;
        b=kvQYt07Oamxp4Tf0ZU2efIhyqe7bxpNbQpKtwwvJLnOAg2v2Dm842CHm6/56vKRwoF
         wUqG79QUVM3WxClXmpkI4RJbADLnP6xULMrDQsrz2USdnjN5v6MRI28tnRxptF7/LWM/
         uaNafHsBt8/zS26N9vx7QsfPLVLNteDQjFCeYsU5EaNV79/p3Iu+LRidACpbLMg8U7PP
         GWkFtgSknNAXQdyfGqIn6K1AHFGJIfd3IK7foDgw/jRO8Mqz7jqzBy3LSo1DmLACi2fz
         HXL2tNnXC6Cmi5dgB45h6o+5+VZ4u1l6g7Ikv0WaaOdVVKrl2UsSIwmB51sTVJisGSig
         WCeQ==
X-Gm-Message-State: APjAAAU2BYSqVTlE5Z0YIhuzHz27tkcaB/ip/kPzl8Uw5msxA5I+z+RD
        SP4J3MOb1EJ3vm8ubanUGUowLj3BfZk=
X-Google-Smtp-Source: APXvYqxfGC2Jz55DO6L3Is4A7dNto0h9PnqgMwZ1x9zM80n4WxjOcjiMNV6qVVbEX3LFSrf/QRH3EQ==
X-Received: by 2002:a2e:9a50:: with SMTP id k16mr237528ljj.221.1568874892798;
        Wed, 18 Sep 2019 23:34:52 -0700 (PDT)
Received: from [10.6.5.246] ([85.235.16.11])
        by smtp.gmail.com with ESMTPSA id h12sm1414250ljg.24.2019.09.18.23.34.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 23:34:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: pivot_root.2: new_root must be a mountpoint
To:     Yang Bo <rslovers@yandex.com>
References: <20190919053801.bwqWTilN@vla3-2bcfd5e94671.qloud-c.yandex.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fc107b16-647b-0ce1-e84e-b8484feacce9@gmail.com>
Date:   Thu, 19 Sep 2019 08:34:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190919053801.bwqWTilN@vla3-2bcfd5e94671.qloud-c.yandex.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Bo,

On 9/19/19 4:38 AM, Yang Bo wrote:
> The man page says that new_root does not have be a mountpoint
> but it must be, I tried to pivot_root into a non-mountpoint
> directory and always failed with EINVAL, the kernel source
> fs/namespace.c confirms that, to quote a comment from this file:
> 
> - it's okay to pick a root that isn't the root of a file system, e.g.
> - /nfs/my_root where /nfs is the mount point. It must be a mountpoint,
> - though, so you may need to say mount --bind /nfs/my_root /nfs/my_root
> - first.

Yes, you are correct. There are in fact many problems in the
current pivot_root(2) page, and I am in the process of 
substantially revising it.

Thanks

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
