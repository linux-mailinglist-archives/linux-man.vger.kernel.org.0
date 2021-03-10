Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 187AE334534
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 18:33:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229851AbhCJRdA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 12:33:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232734AbhCJRcg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 12:32:36 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58AFAC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 09:32:36 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id v15so24258536wrx.4
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 09:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=B5GrBUuLJovj8++5LGyGOp6I2VeehkGdRaxZNMRcSYw=;
        b=WtCNoin3Sy017qkwaIPrCWOCSywJsPMhecpYvtEOoap54GlZCyixUHv43v6Cgu+q+d
         uRx9cbh3cuj4UVX07f2Vmq5Oyr2aK4RKuJ0FRkuJOq+Tgbeb0lqRAQt79nkl/2ZFwOOf
         P3KwuFfdC222Kasx0nMVytxj3Zw53FROZNPbakLhuZnCUfUp6TEWrWnUnBIY8A9+4K3F
         0A3+6rsErYGTgvb5jjOFTJwICQiNAD/gDQpkowKKOAzP+hcNlRal/N9yThiPhaeHwCrW
         xQ4apLRgK+JgX6qYji1ehMB+TY79ni8jGm68G0N25FAtCxoBeA0TAQX/tS90HaCFY0Za
         jsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=B5GrBUuLJovj8++5LGyGOp6I2VeehkGdRaxZNMRcSYw=;
        b=PFOvtnhD7IPmQfZDNBzRpBaHavrc1DBMqLrkewMRzzkaPomKj6pBnlRWHNL1vJao32
         v6Yi/l8kiQH55HkFfAbx4jNn137RfgqMhqx4e35Y7B7uuGJO2DUAidjCjKNNdBpqph0G
         6SzZBoghU88eytIWiHgy1ZKbNelo+ul6hq0j15zX1C5FF47/eNlbTJvs5xRLtCgl6dP+
         jDuwK2rsNvCtHSt1BpoL+YPevmhVMnbORQzjGq3ZIN8vmZxado90aDOiT50c93q0DaNn
         lIO4YEixa3MCEtNPSsc4zap181I85mEHi8nWgGjwNKtEjs79kJcti7x3Dm2Iwm/Vxx20
         l0VQ==
X-Gm-Message-State: AOAM531aZQ/OeBRhuzERgtWGejS3hvY0rVleJKPN0fhIgoKPnRBtPsKH
        1GrJKl0jGbSr9O6K9Pmd8e0=
X-Google-Smtp-Source: ABdhPJxl5GWFtjPY07RP7MOoiBqb4ShSo839+yAcatWqPKH3+WU3BZrf1UkyNnzp/QIUPAJZc5ddUg==
X-Received: by 2002:adf:eec9:: with SMTP id a9mr4649813wrp.252.1615397555102;
        Wed, 10 Mar 2021 09:32:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c128sm15932943wme.3.2021.03.10.09.32.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 09:32:34 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Wainer dos Santos Moschetta <wainersm@linux.vnet.ibm.com>
Cc:     linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: strfromd.3: restrict? C99?
Message-ID: <befb1e8d-42e5-05bc-4d88-ee7f92e9e692@gmail.com>
Date:   Wed, 10 Mar 2021 18:32:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael, Wainer,

It's weird.  The only manual page that I've seen using restrict, and I 
think it's wrong.  glibc doesn't use it:

.../glibc$ grep_glibc_prototype strfromd
src/gnu/glibc/stdlib/stdlib.h:212:
extern int strfromd (char *__dest, size_t __size, const char *__format,
		     double __f)
      __THROW __nonnull ((3));
.../glibc$ grep_glibc_prototype strfromf
src/gnu/glibc/stdlib/stdlib.h:216:
extern int strfromf (char *__dest, size_t __size, const char *__format,
		     float __f)
      __THROW __nonnull ((3));
.../glibc$ grep_glibc_prototype strfroml
src/gnu/glibc/stdlib/stdlib.h:220:
extern int strfroml (char *__dest, size_t __size, const char *__format,
		     long double __f)
      __THROW __nonnull ((3));
.../glibc$

And the manual page states that it conforms to some standards, but I 
haven't found it in C99 (neither in C11 nor C18) nor in POSIX:

$ man 3 strfromd | sed -n '/CONFORMING/,/^$/p'
CONFORMING TO
        C99, ISO/IEC TS 18661-1.

$ man 3p strfromd
No manual entry for strfromd in section 3p
$

I don't know what that other "ISO/IEC TS 18661-1" is.

<http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1256.pdf>
<http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1570.pdf>
<https://web.archive.org/web/20181230041359if_/http://www.open-std.org/jtc1/sc22/wg14/www/abq/c17_updated_proposed_fdis.pdf>


Should I remove restrict?  And C99 from the CONFORMING TO section?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
