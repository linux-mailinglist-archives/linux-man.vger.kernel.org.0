Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5F732E7143
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 15:04:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726302AbgL2ODu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 09:03:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726196AbgL2ODu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 09:03:50 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1ED5C0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 06:03:09 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 190so2668365wmz.0
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 06:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=xTmohy9KPp8s3RZwH9xmPPCOgFWLcJGEGp0hwMB2J7U=;
        b=rTA/K12iPndwWNijb1OrRlhaTtoEzVEcK2TydbyKvoM3vFtLexnV6KECui0e42CwAi
         kEJN+o1qdRixRDoJMEQwJzFNYRTbsKveeJB7c3KcOvUkj5wn+67k88J/XJOPmLzlCq9E
         fOKMCxUBOQE0eYLvowa9UuQbayNSd3fLPVbPvxriuw4noy0m/67ncnMWj48PKvnq3/O0
         LegnUVLkzOGMhKo17fWIDPBxl1s5Gs1nKLoHbSspDZ8/F18AqVDLCi3hb0ns8TPNFEJf
         loYXK9gqhRcCi5V2/x3xcSufzguUxYH8KGoR5zmijrlVFpDLmW/OjBA6autokVgYrIXI
         BYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=xTmohy9KPp8s3RZwH9xmPPCOgFWLcJGEGp0hwMB2J7U=;
        b=VfCINRPACszpLGtxlCe6GX0vsloQCue99ESkKjOE5Webuxg8/awJIHuCH7B0FX8JQ/
         Yq9P9OSsaHACRWkvqFibtGrzOCMjLNiLL7V78YIb7vHtlg9c2RbmjHis4DBIQ9M2yDpJ
         iVBD/6bKBh8Djv4YexOZ97Nn+Ho+h8shr/6HOxPuknx6v0u4+feVb78IxHYCS75AFPiY
         GH+uBrpdTA3ODd92zSWDIHkh+4DQ9nX5ucmXjauTfwVPnPLnw6IAHdADnyIFglUsa8fF
         gFNNBhvX+3M3R6JrRaYP2bCj+jZ4ijebTltmorSs6JdcXlT3wxlr1nL8Sv0SoYHinNpW
         gx3w==
X-Gm-Message-State: AOAM532u2VsWgcmOUpfTIYO3FL6j4EcA9EEhRrCa5iDToxdo8ugu3R5A
        IffD/rtaRO7lroHjEF3zgKJ5Qy9lnQs=
X-Google-Smtp-Source: ABdhPJwKouhilwxdqRPowwNyTSlLtWCNdEfm8E+SAEIxAj4b6eRUJkj7wZ7b6N+Av6/ky7LD9JK9Ng==
X-Received: by 2002:a1c:9a4d:: with SMTP id c74mr3748582wme.5.1609250588621;
        Tue, 29 Dec 2020 06:03:08 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 125sm3456622wmc.27.2020.12.29.06.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 06:03:08 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: off64_t, loff_t
Message-ID: <a09d053d-256e-c031-e4dd-ff4d552468bd@gmail.com>
Date:   Tue, 29 Dec 2020 15:03:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This is related to:
https://lore.kernel.org/linux-man/CAKgNAkhuL9JRG_YhVG6Y-yjobDVAGjrUSdcQ4kV-4MABjZiwRQ@mail.gmail.com/


copy_file_range(2) says it uses 'loff_t':

$ man 2 copy_file_range \
> |sed -n '/SYNOPSIS/,/DESCRIPTION/{/copy_file_range/,/^$/p}';
       ssize_t copy_file_range(int fd_in, loff_t *off_in,
                               int fd_out, loff_t *off_out,
                               size_t len, unsigned int flags);

But glibc uses 'off64_t' AFAICS:

$ syscall='copy_file_range';
$ pattern="^[^ ]*ssize_t ${syscall}[ ]*(";
$ find glibc/ -name '*.h' \
> |xargs sed -n -e "/${pattern}/p" -e "/${pattern}/,/^$/p" \
> |sed -n -e "/${pattern}/,/;/p" -e '/^$/p' \
> |uniq;
ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
			 int __outfd, __off64_t *__poutoff,
			 size_t __length, unsigned int __flags);


What would you do about it?
`sed -i 's/loff_t/off64_t/' man2/copy_file_range.2`?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
