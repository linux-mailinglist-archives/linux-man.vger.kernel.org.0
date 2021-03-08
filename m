Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD671330BD2
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 11:55:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbhCHKzP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 05:55:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231411AbhCHKy4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 05:54:56 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC2A7C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 02:54:54 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id w11so10919958wrr.10
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 02:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/fv6J4kEhZPmgKUo6ovRjfG1Po+4oGfprdh5lMqHXSQ=;
        b=czn/3KHcLk4o5zI3yxbEodWn+jnPHDeOojFPimjLeJuuqIrwbnkuKl8StkR1/9WuJQ
         g53XjKCjZlnXUPd3crOuWP1QpWLI6d7cmI9J+cEfsW8JJejEueBQ9B2iBQABrnVaA7GS
         56+mdgsxrT1laUqnXcFwpjWH508xs9JupNNanJfbuylVIGrh/Rbg2ySWBmFs2aOjoVS2
         TXvRzejaGaNU25vm24kUdIi8MYAONdULXZo71xx7g9CWXMotWvwGpjILzZ4BEN3R0jw7
         0cYt/z6Kud/cnGz57MnRuch0T4YLQHeMcrOiNEInKgs0F/HwGb3pXcbwOvFDuIjEl0/c
         V1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/fv6J4kEhZPmgKUo6ovRjfG1Po+4oGfprdh5lMqHXSQ=;
        b=IUucqWlYV/jJ8eXYtQlfU5uv5JIXKZQqOXhZMhxU5nY87PRH52XVS45NzTDIq/O/3z
         ga0onYGMN93MLlPCxI3DXIcQ2GmUrlO1A7SuQXV/rzOnNjUZOA4246sXo4e0kzA1ncfK
         kqNHcWmEJx5yQmM7SSFcNsgafDv7P6jrRB4PNnQGiO+KdjURoA6yAght7DdhIx3TJDN7
         FncOiTim9XhwRcBuA1oF8LQq+PSayDJtUpeyQKs49ZhwKdKDnM03ZaxJ6YhtsiTiajhs
         fLW5K2+eqbGJSqdFAw4tV2awN47U4k+oIWShGLpTLreIunDveFYv3i5ajbnK9j4CqOCg
         d8qQ==
X-Gm-Message-State: AOAM530gl8hZ2z71IsNoOFqwzCt+nBPPJsZ70g8UUAvvu86uiCA1EkVM
        h56So+WmjikImdkeeOm5iBU=
X-Google-Smtp-Source: ABdhPJzhwL/wHGD/w0cgB87UDDj64namL7OS+9y0NmcDScAjYC75wBePL3RU/MnU5WXsQoJR/BcJog==
X-Received: by 2002:a5d:5082:: with SMTP id a2mr21456858wrt.289.1615200893475;
        Mon, 08 Mar 2021 02:54:53 -0800 (PST)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i3sm18282774wra.66.2021.03.08.02.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 02:54:53 -0800 (PST)
Subject: Re: pthread_cleanup_push_defer_np.3: missing functions in glibc
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org
References: <1ee301e5-d3a4-2e0e-3473-6b0eea304266@gmail.com>
 <87mtveexop.fsf@oldenburg.str.redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1eecbbec-06ac-d94a-c0b2-52a8012d7280@gmail.com>
Date:   Mon, 8 Mar 2021 11:54:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <87mtveexop.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 3/8/21 11:39 AM, Florian Weimer wrote:
> * Alejandro Colomar:
> 
>> While adding 'restrict' to the prototypes, I found that the functions
>> defined in this page don't exist on glibc (or I couldn't find them).
>> I tried removing _np, and still no luck, and 'git log --grep' didn't
>> help either.  Where these functions removed at some point?
> 
> Yes, they are part of the legacy cancellation implementation that
> predates DWARF unwinding.

Thanks for the info.  I guess we should add that to the manual page. 
I've tried checking out some quite old versions of glibc and still 
didn't find the functions.  If you know more details about when they 
were removed, please tell me and I'll update it.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
