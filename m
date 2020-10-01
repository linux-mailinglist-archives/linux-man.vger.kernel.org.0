Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A03427FC5F
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 11:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731067AbgJAJYu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 05:24:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726992AbgJAJYu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 05:24:50 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7590C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 02:24:49 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id x14so4804926wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 02:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=09OM6aL+ocA1gPotQUNiBNKgXBaZgT611oT+g+2VHFM=;
        b=gxg7pC625nUIzq7CCZ2Pi+L4kwDLZxP9NurKWk2EBBYc0VaIIi5yYk8zs/25r7kgfi
         Am1GE6ql7QoO8+rddsp5o6+eDwj6W/H/yYckugDSPh+ysmvUclnMJs0VZ54wulKKhdF6
         TRcxeruje79ejlcty1VcvCccEhRwiFkQrQkTlzq1ppzdmsY6gNYdk+5AM8otV/Oq/rcy
         OSDjo3lgcfik9ENaGMWo+Hu3nMQzCDQOPNi9ycBZCJhCVMhcta0jxo4+CRobbcpGtqfw
         IBvCbEqetYLoT2bQ7dYeM6nAaRNFg5s3pBXF6Rf4LyBX3OGXn5X14+k7gbAmXHfVPceS
         Kyuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=09OM6aL+ocA1gPotQUNiBNKgXBaZgT611oT+g+2VHFM=;
        b=qTR7MyMVW1ZLIMk5UDDd+uVMwXNSnmxbzWOWIs+be90m46UzH/jF+FFHQPcILh/Aer
         zYhvz87x6V+m9MJuVbWRLpJTlfVLBDeN5nd4bAEAes2zVEUUvpTmrD5KJzpKDvzNf9DO
         g26W0XjUrXSc4fSc8rpN8Tn7QVNxDCXgGaci9OuxCApcgsZPZbRKdMw9JynHe8SLSbHy
         XezrHaEaU0zAnob3EcJuseEAyEm4K+VOfCEgNLwfcrfiuDAqcnL1v9nxjRuzgLaY8aVr
         ktPbpl7yMnxLWnreI7+Z8f1nR9whBGt3177/hh8ndZDvn8naMN+ugITgCFyPqju48xGj
         u1Gw==
X-Gm-Message-State: AOAM533kkNyEcWPB/ZdiDb7g9mf/+/PfvoDH9UgKye6MDRgfsxX7W7Hc
        A3Noh5947hVqJYoxTw/Lt4b+6beR048=
X-Google-Smtp-Source: ABdhPJydApbjU6PzgnzegmdlRwlTlpmAE/cznhMFY6b9gByR40BMim9Lzad6OlhFieJpukw8BNAazw==
X-Received: by 2002:adf:e989:: with SMTP id h9mr8312650wrm.38.1601544287412;
        Thu, 01 Oct 2020 02:24:47 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id s17sm8224201wrr.40.2020.10.01.02.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 02:24:46 -0700 (PDT)
To:     gcc@gcc.gnu.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [RFC] man7/system_data_types.7: Document [unsigned] __int128
Message-ID: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
Date:   Thu, 1 Oct 2020 11:24:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I'm documenting the system data types in the man-pages,
and I was writing now about these types.

I'm showing below both the rendered output and the source I have right now.

Would you add anything to it?

And I have some questions:

Is 'signed __int128' a valid thing,
and if so is it completely equivalent to '__int128'?

Is the GCC version correct?

There's no implementation where 'long long' is 128 bits yet, right?

Thanks,

Alex

Rendered output:
[[
__int128
       A signed integer type of a fixed width of exactly 128 bits.

       According to GNU, it is supported only for targets which have an
       integer mode wide enough to hold 128 bits.

       Bugs: It is not possible to express an integer constant of  type
       __int128  in  implementations  where  long long is less than 128
       bits wide.

       Conforming to: GCC 4.6.0 and later.

       Notes: This type is available without including any header.

       See also the intmax_t, intN_t and  unsigned  __int128  types  in
       this page.

[...]

unsigned __int128
       An unsigned integer type of a fixed width of exactly 128 bits.

       According to GNU, it is supported only for targets which have an
       integer mode wide enough to hold 128 bits.

       Bugs:  It is not possible to express an integer constant of type
       unsigned __int128 in implementations where unsigned long long is
       less than 128 bits wide.

       Conforming to: GCC 4.6.0 and later.

       Notes: This type is available without including any header.

       See also the __int128, uintmax_t and uintN_t types in this page.
]]

Source:
[[
.\"------------------------------------- __int128 ---------------------/
.TP
.I __int128
.RS
A signed integer type
of a fixed width of exactly 128 bits.
.PP
According to GNU,
it is supported only for targets which have
an integer mode wide enough to hold 128 bits.
.PP
Bugs:
It is not possible to express an integer constant of type
.I __int128
in implementations where
.I long long
is less than 128 bits wide.
.PP
Conforming to:
GCC 4.6.0 and later.
.PP
Notes:
This type is available without including any header.
.PP
See also the
.IR intmax_t ,
.IR int N _t
and
.I unsigned __int128
types in this page.
.RE

[...]

.\"------------------------------------- unsigned __int128 ------------/
.TP
.I unsigned __int128
.RS
An unsigned integer type
of a fixed width of exactly 128 bits.
.PP
According to GNU,
it is supported only for targets which have
an integer mode wide enough to hold 128 bits.
.PP
Bugs:
It is not possible to express an integer constant of type
.I unsigned __int128
in implementations where
.I unsigned long long
is less than 128 bits wide.
.PP
Conforming to:
GCC 4.6.0 and later.
.PP
Notes:
This type is available without including any header.
.PP
See also the
.IR __int128 ,
.I uintmax_t
and
.IR uint N _t
types in this page.
.RE
]]
