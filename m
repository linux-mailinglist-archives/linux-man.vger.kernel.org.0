Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2D01F1CDF
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 18:06:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730454AbgFHQG1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 12:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730445AbgFHQG1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 12:06:27 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AFE7C08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 09:06:26 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id r9so66758wmh.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 09:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hp9HLQYd5pI/BoG4AVmFyebo9JLFNrodkvMBRLoVDyE=;
        b=oWzdITacYKZMrznwTysQmeHR2mgYrk1/OdF59DxzHdtG0d5ycQhRnAfhQ5qqzK7k4T
         EHkwsQMy0upGw3Z2JZd09ZqfJKhoOZ3CE6NhYvc0UHPx0ItLO34UgmVUK0UDYffHXDnU
         M9bsW8r41OXpXKuhT9BlQGN6rL3s9YIKa1+yBkX6zpPIVLhwJYWrbSnLemDXHMqkx5/6
         V7dHMOGp9IjJ1X5uUga375GuerKbrj4F/rFZ3bCrpsZi2Z/MO1MkEXzTEJv5P3cdWp3N
         HcfrcohYzF/7ZXUg0q4NliN2gEgC5AuD9NRjcINAiUQLg9xdp5uYB1HgLVMTdrm4HV/M
         H1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hp9HLQYd5pI/BoG4AVmFyebo9JLFNrodkvMBRLoVDyE=;
        b=V9e6HxDKy4DRsX1D9O/WSZe2HC3B6j6u7G3lSA8mzKzdUvuFieUK+i+YLvHBXs3wEg
         Ua/cvX6IIDlQeZp/XpOmBdL5DJt6aWRevgh3WDHQYMFisvlw7GEAPYCMZ8vXCm4t2EP1
         1HO/IBEC4AU43D+elstxmWrTh9R9Df0Gl7rif+AeEKne2bRgkan5jEtAP9T0J8rwBCb1
         h0etx31awIhsK05Sdw609C/eJVj7MWoD2/fdJ3efoCk8hLNv4wQ3Bk0Zg8KTGXriuHOq
         +YBck386/BnNHvfMYTU8CNg9TzNVmRKcSCfnbWx+XLWubVY9trYGbAa1WwQfVABYVLoS
         mFuA==
X-Gm-Message-State: AOAM531VYFv4u2TEg8YEBguBZ9fNGu985W1A67Q5qKtXc+SJ36RZd0Z6
        dqr8pl8LoZloKR1HEGg2x/XRpeM/D8w=
X-Google-Smtp-Source: ABdhPJxA+Ikyv2/qFtvhmGxVUARZshmIKUAQVmZGq73twLP7q/IyHSYGq1xEPM6OqIxI6hCk96rKyg==
X-Received: by 2002:a1c:d7:: with SMTP id 206mr64682wma.15.1591632385207;
        Mon, 08 Jun 2020 09:06:25 -0700 (PDT)
Received: from [192.168.178.63] (x5f734b84.dyn.telefonica.de. [95.115.75.132])
        by smtp.gmail.com with ESMTPSA id s2sm43474wmh.11.2020.06.08.09.06.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 09:06:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: core(5)
To:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <27f46ba9-d9eb-e670-9628-ded62a6980c4@gmail.com>
Date:   Mon, 8 Jun 2020 18:06:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hell Jonny

On 6/6/20 3:18 PM, Jonny Grant wrote:
> Hello
> 
> Some feedback on this page
> https://man7.org/linux/man-pages/man5/core.5.html
> 
> 1) "disk file" sounds rather old fashioned, usually would just say
> "file", on this page, removing the word "disk"
> 
> "The default action of certain signals is to cause a process to 
> terminate and produce a /core dump file/, a disk file containing an"
> 
> 2) We wouldn't regularly say "nonwritable" in English, "not
> writeable" is better English
I did some rewording for both of these.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
