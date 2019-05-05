Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7594714184
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 19:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727916AbfEERde (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 May 2019 13:33:34 -0400
Received: from mail-vs1-f46.google.com ([209.85.217.46]:45399 "EHLO
        mail-vs1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726905AbfEERde (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 May 2019 13:33:34 -0400
Received: by mail-vs1-f46.google.com with SMTP id o10so6749016vsp.12
        for <linux-man@vger.kernel.org>; Sun, 05 May 2019 10:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wx9pnqVPA/tbyratcZFf9staO4jroPC9M/0ficpwKYs=;
        b=p/V07pQgJLwyxgJPbA2OWCxdk070osaBlaQco8zRsjoo2XeFRZcsJGvk2lDGlHiHQI
         TP/3fu5HKCcME/8lFOu2tRXx6jJM7NhFS2GQGwCSXYCxlW+PaLPuHUzXGl6TvvMU9akg
         lGxZUTHpJhfpJ3W1q0jRP35yzqVrRdEJTESuS1Wqcb93Vu5VtlGa+CkVXcUZQKDZXnyq
         fGvip5Jz22eKVva7yp2CH0WFyR4HlYX8O5pzjUnmZXfYA1UulHgYJhjfOx90DUFN7Wxo
         uN1vvKcK71/AWlJ4KLLVDNc2YTntuYJ/dP3xpS8KvLd1IO9f+wkPfwTgMDvkDmcNwddX
         qozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wx9pnqVPA/tbyratcZFf9staO4jroPC9M/0ficpwKYs=;
        b=XLvPQCZu1C6LiJNYf3648EW1DUIuwLuX1FnE3b4Y0ztfR5l4Xe/XOY6a8wa5Ij9Ull
         eynT2HgErdK7yI+ugW19Zn+4jvtljmMo/7+i/wTl9CV3Ens/4c0ZeYASTDi6lnu1p2RI
         /jfdlOiADE6iHzeomTdZDsBJyw1O+jlBpxBqTa4O7OadU5R4Nvej0pEkPZ06813BpkV8
         cR29E1jG6igZvFVrpQxM0YidozCODVLhuEfgRwhEN91hoteT7fw/6kEQPXCNeCq8FBGH
         uUC2pjck0B/3MfcqgCd+rf6jSsDUHBOJbu05LIlF9aWJY5Mcps2vDo7aKTl72X4ZVxGR
         P3Iw==
X-Gm-Message-State: APjAAAXK1IVIIGq1oF4vGgvlKhJaNWLwVQclKAHfzIE75fsXBXgqV0hk
        D+pfll5nNsoqMS2WfXEDlln0wE61
X-Google-Smtp-Source: APXvYqwXSbekeH7nnqtrcSJNJSf+xYbkKenFkfERxMkE5XsjLBTds7kqT8Hl8D5rJQ3CXFVydsHOEA==
X-Received: by 2002:a67:eecb:: with SMTP id o11mr9203870vsp.66.1557077612601;
        Sun, 05 May 2019 10:33:32 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id w69sm5080614vsc.8.2019.05.05.10.33.30
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 May 2019 10:33:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Typo in mmap(2) : _SC_PAGE_SIZE -> _SC_PAGESIZE
To:     Hugues Evrard <hevrard@google.com>
References: <CAFOVhR1Fqg9L718yEYVoECwAeNx+KKztfEKBvgLP7F7psFWcpg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d161215f-d3ff-1a34-2b24-aad83c09046e@gmail.com>
Date:   Sun, 5 May 2019 12:33:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFOVhR1Fqg9L718yEYVoECwAeNx+KKztfEKBvgLP7F7psFWcpg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Hugues,

On 4/30/19 4:38 AM, Hugues Evrard wrote:
> Hi,
> 
> mmap(2) currently reads:
> 
>      offset must be a multiple of the page size as returned by
> sysconf(_SC_PAGE_SIZE).
> 
> Yet sysconf(3) only advertise a _SC_PAGESIZE variable, so I think
> mmap(2) should be corrected to:
> 
>      offset must be a multiple of the page size as returned by
> sysconf(_SC_PAGESIZE).

The fault rather is in the sysconf(3) page, which should more clearly
advertise that PAGESIZE and PAGE_SIZE are synonyms. I've adjusted the 
page to say:

    PAGESIZE - _SC_PAGESIZE
           Size of a page in bytes.  Must not be less than 1.

    PAGE_SIZE - _SC_PAGE_SIZE
           A  synonym  for  PAGESIZE/_SC_PAGESIZE.  (Both PAGESIZE and
           PAGE_SIZE are specified in POSIX.)


Thanks,

Michael
