Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C3D6314311
	for <lists+linux-man@lfdr.de>; Mon,  8 Feb 2021 23:36:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbhBHWgx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Feb 2021 17:36:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbhBHWgw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Feb 2021 17:36:52 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7A5EC061786
        for <linux-man@vger.kernel.org>; Mon,  8 Feb 2021 14:36:11 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id o24so510473wmh.5
        for <linux-man@vger.kernel.org>; Mon, 08 Feb 2021 14:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1R+e5JFDNh1cpRLUogyYqNfPT1Wbo7DPFxyEiJBAo7E=;
        b=YO9hA5UkgKVOf8vwix0rox5pJm3dfVIm8Tiqu4QbeZ4rWog1aBL555fujEyUjoYDYZ
         I3p88WB52JiQfgsV04FyrMt8Fm+XZnmn9C0oo/vxPK/tDmBw/dFiRuLA7wD4LlGT5sOi
         4d+1oVqUT+kZk0uyhWJyPDEzg5+sMqP6mrFYo50vh9OgJsG8TM07llWM4TlxPuKhtxs7
         V7cIq0sMn1GLdVCxoX70Weds1GHWlwrGHDgt8SZ+mVeeqHygHBL7QQCGMninOZNznVYp
         ixV6TKMnVpCktY+qm9NMx8JPqjvdhD27dOoefHGwGQSHZXMer5WldN7HJT89Yz6Xzrb0
         rEKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1R+e5JFDNh1cpRLUogyYqNfPT1Wbo7DPFxyEiJBAo7E=;
        b=EB5j6szBAUVUbe0RhDL5ylB+kC3+fkyY7N5oaGPBESrkLpE/AHvyjuzwxPae1klLgr
         AMs76RgPxWDDD29qTeXgpZG2cPPkZ4xCEArw7PjePSEfYFh5uArkAE5zqSoN+6ueX4+c
         u6j+/ZYGO25QMkuUbxJsK1hQUslWaLrLDq4ZRkBPAdpIPX+aUxeBG8SRsuCIknVOGKmx
         R7cBCEv7Msjlh7Sd0ZfdHejiICZzG3mdn4PwN5dP1Th1ZbCD4irXzokwOKFs9m/Ub4jF
         5sM7YGqyuwGDHk/WQs/AkUJ95DcorAEE92XTk7ndRIV+dJuH+qRuQ+hyZgqMTEp/bKBu
         6xKA==
X-Gm-Message-State: AOAM532jCCSeqlDVb+DytY+4Z2E1EUhEfS0RTYhCaNdc9CCkhdHenhPX
        keN1X03XuzgQdNqdTCmE6iBy7BkWxec=
X-Google-Smtp-Source: ABdhPJy4E8Aw7RNxEfK450rAcenFmH03CC8+iApJJSWwWRi/En9O9H/j5EkKGGUH7KXIIFn8qgCXGQ==
X-Received: by 2002:a7b:cc95:: with SMTP id p21mr816752wma.22.1612823769892;
        Mon, 08 Feb 2021 14:36:09 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id l38sm981041wmp.19.2021.02.08.14.36.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 14:36:09 -0800 (PST)
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
Date:   Mon, 8 Feb 2021 23:36:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += linux-man@]

I forgot the list.

On 2/8/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I think we should simplify the prototype of ptrace(2) from using 'enum
> __ptrace_request' to 'int'.  It is an implementation detail that should
> be transparent to the user.  Other pages where glibc uses an 'enum' are
> documented to use 'int' (I don't remember the names of those, but
> remember having seen them a few days ago.  Otherwise, we might have to
> document 'enum' elsewhere, which I don't think adds any value.  What do
> you think about it?
> 
> Thanks,
> 
> Alex
> 
> -- Alejandro Colomar Linux man-pages comaintainer;
> https://www.kernel.org/doc/man-pages/ http://www.alejandro-colomar.es/


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
