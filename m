Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A7BA2BC5C3
	for <lists+linux-man@lfdr.de>; Sun, 22 Nov 2020 14:15:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727777AbgKVNO6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 08:14:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726436AbgKVNO6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Nov 2020 08:14:58 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CA2BC0613CF;
        Sun, 22 Nov 2020 05:14:57 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id m6so15749847wrg.7;
        Sun, 22 Nov 2020 05:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BC9OgGaPrcjflKjNMGTb8TTTnIqUxGe8XO5S8bOM7DY=;
        b=azTxoI7R1zOXcNM3GAn8Hn+fF68R+xnC6BUGkUZsnA4qgayI5rDzihxSyVMr2WKYCv
         u3/Md22mfXWgV7Ma+ooKu2FnClYng7XE28Doyb4pZTSpVCgKZhMVP0nIkIBKZ6/rtN/M
         uj81Xo+QsRnA3buNoKSmMbXGCzxXeJdPwGBDaoTHE09nPqZaAhcIX9z1pB61ZYDyvbe1
         9rGorA7CtlGrmoZXwxUDiNVbJyL/fK6yuriuuqn10ZyRDFadMijADHeMm+0zfeMt8wvm
         cLQY0QsNDzIKpyhMsMFpAqI+aVvMPb7QBxFqeyhEBwrdw3mPbNvNeJ4Os/I0zk6Q287s
         75jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BC9OgGaPrcjflKjNMGTb8TTTnIqUxGe8XO5S8bOM7DY=;
        b=oMxRdmVEau9P9hYNuEA5gEa6Wta7d1Bh6o6z02WXb6cvmI2ctSHcdMgfk4tG6E72B0
         eUbcsTJ2TvVbmRf41vxRV513Z9s+2b3ioPn6qwTf7BtHpv7/sqrkWHPMDgEAVLzawncr
         uuhGyn+m0A2MjEDiZJrVl1nqPsy2FcImCk5cWNyLmoBKy2mIeFKKf3sKFyY1O+P+s3E8
         Axi7VYX7viGvavA98H3wWv3F/S4r4pYsczSWM2cNe1c4vRU0VWAlQcE274agQFspiy48
         oeDP0WyzCRgoxdA6t4nveEmnDPrVrxqCMd2MWFpsorQEUpUEyan28Vpk0yRgbJ66oaMT
         oH4Q==
X-Gm-Message-State: AOAM531DOlezBpahHMSnRrFGJ8BE8Xsw1sPCZOOqsnhMys83gwK3+g6Q
        Go3hS01KVLNwBFiQO4CaHVAGb2dhPxSMOg==
X-Google-Smtp-Source: ABdhPJxM54wQNvIbNTb4U2QZYhvbxspdFdvXkhT+oOD3aBOG58X69YDjZphN33Vo+BN/0CQctVGn4Q==
X-Received: by 2002:adf:ed11:: with SMTP id a17mr26127888wro.197.1606050896234;
        Sun, 22 Nov 2020 05:14:56 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id d16sm12898183wrw.17.2020.11.22.05.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 05:14:55 -0800 (PST)
Subject: Re: [PATCH] lseek.2: SYNOPSIS: Use correct types
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201121173054.12172-1-alx.manpages@gmail.com>
 <87wnydblzt.fsf@mid.deneb.enyo.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <79a9ded9-6bf6-d202-bbe9-2f279bc3c945@gmail.com>
Date:   Sun, 22 Nov 2020 14:14:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87wnydblzt.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 11/22/20 1:43 PM, Florian Weimer wrote:
> * Alejandro Colomar:
> 
>> The Linux kernel uses 'unsigned int' instead of 'int' for 'fd' and
>> 'whence'.  As glibc provides no wrapper, use the same types the
>> kernel uses.
> 
> lseek is a POSIX interface, and glibc provides it.  POSIX uses int for
> file descriptors (and the whence parameter in case of lseek).
> 
> The llseek system call is a different matter, that's indeed
> Linux-specific.
> 

Ahhh, true.  So many similar functions... :p

Thanks,

Alex
