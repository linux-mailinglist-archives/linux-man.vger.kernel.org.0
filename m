Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 734A12CBC65
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 13:08:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727127AbgLBMGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 07:06:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726479AbgLBMGM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 07:06:12 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49AB6C0613CF;
        Wed,  2 Dec 2020 04:05:32 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id a16so3821585ejj.5;
        Wed, 02 Dec 2020 04:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8LOqrpEWFYD7xxm8QVITMguMi/oKIgU6hejK3ig82XQ=;
        b=l5roT7Qpet6sIO2Kl73ftKavn4FpZGZAIndVzEoCnHADDt4Ruqa7RwbpvRLlWdryN4
         CJttYlG3KIPwg+e3cpbmrapqfPIfCiyMGs89jBINouRkLoBq+OfEdiN2E3tU4XUMi+bR
         DFkL/JXVMyuiYIyF+T0H4VXUKX42DnJa5rtNWI7fejge3t9Sl8BmJmvlSP5xwqoO8+W6
         8KkGypc3vS98oy4Vwz4jyMV5G1tW3VmoOjSG4pGKAvYpV+nao4XaQzw9g1LZd9/tcxvE
         eN1gKIxNItHg4QdDam+W3ko0ZAcxa1MMM/mVR8JTXxizoiMU/Hwb+BCc7wsnRkjD2lM5
         SwQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8LOqrpEWFYD7xxm8QVITMguMi/oKIgU6hejK3ig82XQ=;
        b=c6uIBRxBx7uU8HaqfXmlZskq5qCVSSLrDdw7JqqPmgg/vLL7g3pAVURRmchjXWCALG
         4/qYfO2BLFkFS5iDiMPn+g6nwZyiy2UiTkCKLWlrxlgkJRMuHoMywO3zS76rt3Jkz231
         BtwIwDQSlKFKzlngZNsd+9rqffdFy2F/2wmfi/FrGGwFSe8bGhYqsgQoTuDlMTlmB81J
         41f1vuA1l6GMt3omK3uzrkF6rpOhgC6CPXnr111EcqgvaNSWdLtbKvZ/DpAsn8Stvpeq
         /cR+A6ClevlrNCpXz+FCCt7n34obuGrQgEYCmNwAaYvO0w/M9nMhWRZANcxuP4h+K7wX
         cwMg==
X-Gm-Message-State: AOAM531PwPn+bx7OsKWspqRoDG3eSOZAzV361AgzpKXL+NIdIMktHGaP
        ZfTrpypgZGHbC4ddWdTSEBA=
X-Google-Smtp-Source: ABdhPJy4jUDxuNjjLQsTqSfUL/GfkBGO6Jo2IEN4GCBb6EMvnxeWVlMw4PQz9S7RJbZ4K2JWHe9yYQ==
X-Received: by 2002:a17:906:358e:: with SMTP id o14mr1901513ejb.526.1606910730942;
        Wed, 02 Dec 2020 04:05:30 -0800 (PST)
Received: from ?IPv6:2001:a61:3aad:c501:15d9:d9fb:bc21:cb92? ([2001:a61:3aad:c501:15d9:d9fb:bc21:cb92])
        by smtp.gmail.com with ESMTPSA id e19sm1019668edr.61.2020.12.02.04.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 04:05:30 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com,
        x86@kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, Jarkko Sakkinen <jarkko@kernel.org>
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <979b146b-d5ce-f7a9-9e6f-e723b62bbaed@gmail.com>
Date:   Wed, 2 Dec 2020 13:05:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/2/20 12:50 PM, Alejandro Colomar (mailing lists; readonly) wrote:
> Hi Jarkko,
> 
> Thanks for the page.
> 
> Adding to Michael's comment,
> here are a few things to fix (see below).
> 
> Michael, there's also a question for you (grep mtk).
> 
> Thanks,
> 
> Alex
> 
> On 12/2/20 8:15 AM, Jarkko Sakkinen wrote:
>> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
>> ---
>>  man7/sgx.7 | 198 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 198 insertions(+)
>>  create mode 100644 man7/sgx.7
>>
>> diff --git a/man7/sgx.7 b/man7/sgx.7
>> new file mode 100644
>> index 000000000..429c9b64d
>> --- /dev/null
>> +++ b/man7/sgx.7
>> @@ -0,0 +1,198 @@

[...]

>> +support, ensure that SGX is enabled in the BIOS.
>> +If a BIOS presents a choice between \[lq]Enabled\[rq] and \[lq]Software
> 
> s/\\[lq]/\\(dq/g
> s/\\[rq]/\\(dq/g
> 
> Basically, we use \(dq for any double quotes, and we don't care about
> left or right.

(Yes.)

> Michael (mtk):
> 
> I was searching to see if it was documented in man-pages(7),
> but I didn't find it.
> Should we add something under man-pages(7)::STYLE GUIDE::Generating
> optimal glyphs?

I'm not sure. (I worry about overloading the page with too much
detail.) I think I'll just duck this question for now.

[...]

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
