Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B2982ED4FF
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 18:05:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726326AbhAGRFN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 12:05:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726165AbhAGRFM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 12:05:12 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E28FC0612F4
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 09:04:32 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d26so6316137wrb.12
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 09:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=Hmn78E7JEneB708YIMsjTlANEoWtd/h5QKR7RL9P+Zg=;
        b=F0k5UdKk0L9w8NDiaS+NgJ1z8DfjunKHMPc9YZ0O13iz1tvyp2gh2eMdUy4gZfWvT0
         hSgRljibWLPS7CcZQ5ab/N4S+akE89CJgNPrwBlA45ut3TGvTwe7HRHggGDK4goiqRGA
         tyxxogqdNa8zVciw0zBdHlSqyXJHFIgzTUzlJpSrxWlUZwja5zEG0ZODpw0oBABxD5Vx
         ty13mxlsfl1TCoX72OoaFzgUKEkV3ALwmnLOU9XFHTz3Nnu2ACGY0HrDCzFqaQ1jaxdm
         9feWUPP1gP68RMPl6feBVDzfj3tBIwDvtTwCdiYn+obdB/u8YS7CB7yfLOmDr9I24mIX
         u94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=Hmn78E7JEneB708YIMsjTlANEoWtd/h5QKR7RL9P+Zg=;
        b=Wr1lpnvvKRjVsBTnY+OQy+wzH1eVmChhY3BrqczuOn96J77pkokZMiOBFJHcFXe4Se
         xCawAGzzbkK5VJ6k2CzKaNJQJafOt8ys1opkcAAytx6fi8eXzbwDrxm5uD9eK+If+Vwq
         VbL0XAZZePzN+bcdiYshNmmZ9uLGrtUNXBEoodbcSsRmtgqTNlLSDCHN2oZJXanbyn3x
         bZdy/sNohVdNjW63RbdjjMOTYW2h9hj2oxZtrpdK8FbDxovoQnKrtAF5hW349z/Vuu5C
         LeLb/fn9D6jdY8ePd3+r1ifOXxwsqMB+bpR2Ia9nMU2GY8DLAvrZFn30vgIeAkSuC2bG
         ISQA==
X-Gm-Message-State: AOAM533EnwXss18v24ZfIzIHATQ7X5t3Pff04o+q23PNvTdG4RUxFEyA
        s3263sIjYDXZ9Ym+WjcWP5pLQaKQ92E=
X-Google-Smtp-Source: ABdhPJypCfSaGVfCgHV2rUMmlKNaQBf2ncIiS12zkYOg2NL2yPWDI6Lo/ZE5P8cVNRb3oi1v2jx+xA==
X-Received: by 2002:a5d:65ca:: with SMTP id e10mr9990565wrw.42.1610039070878;
        Thu, 07 Jan 2021 09:04:30 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id o13sm10412106wrh.88.2021.01.07.09.04.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:04:30 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Further inconsistencies in FTM
Message-ID: <87f6ca4b-7f4c-20ed-cb94-3f4f88fc5077@gmail.com>
Date:   Thu, 7 Jan 2021 18:04:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

[[
SYNOPSIS
       #include <stdlib.h>

       int clearenv(void);

   Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
   ture_test_macros(7)):

       clearenv():
           /* Glibc since 2.19: */ _DEFAULT_SOURCE
               || /* Glibc <= 2.19: */ _SVID_SOURCE || _BSD_SOURCE

]]

[[
SYNOPSIS
       #include <time.h>

       int dysize(int year);

   Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
   ture_test_macros(7)):

       dysize():
           Since glibc 2.19:
               _DEFAULT_SOURCE
           Glibc 2.19 and earlier:
               _BSD_SOURCE || _SVID_SOURCE

]]

Which one do you prefer?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
