Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AA5B3E8E2B
	for <lists+linux-man@lfdr.de>; Wed, 11 Aug 2021 12:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236966AbhHKKK4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Aug 2021 06:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236929AbhHKKKx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Aug 2021 06:10:53 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0657C0613D5;
        Wed, 11 Aug 2021 03:10:29 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id lw7-20020a17090b1807b029017881cc80b7so8751961pjb.3;
        Wed, 11 Aug 2021 03:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NMk4UsFt8BqkCANJdmDLYqpG8iW/sccOsuB7Ch5oLT0=;
        b=LBUL67G89m36GRNm6NjUGnJ+ppLvHWhk5RB0XPG4MJRdzBkUAgyYgX1xQTRaXDU7Cd
         fD4tLvulbyuzYBthoyZU+bG0OoVdlq7x+UGvmAPorimtL5gRqzq0w7Ov7a4AjZmV4ree
         fyvMLQLlZQKvZZJPgICsgfx5AKNzCa5XR0zeMRnxu0kCzSYUi4rP/1H1rox59sto/bk3
         4BFM5W6XQmGdd7wFwGgKolsytVWMJQCTFwF7zTJQ0LDH5CegAAf9xwx/IHjm21EDYRH1
         9IZmhR9M7zN3xinGmm/TPd+YgAqHwshDfqr5XvGBU/dtcqHc8sW2cAjsOyVxtYjbYS0c
         eOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NMk4UsFt8BqkCANJdmDLYqpG8iW/sccOsuB7Ch5oLT0=;
        b=R1qAaPPofNG14XD5pdAJlUZUm1Ubyz+e5HnMqmCbOeugCcQQrbcDkKRIkNQDBNs5WK
         FD8SLw2LBqrwCy4RaHfhygqyLG5D5rqRLyoo4x7RHkbtkUriFJ7AfmPU+cm5Q3C3cNjY
         4LU11o3NfBT/K4pm0kTxor7x4syHc3+SSXE03dcRbjg+ywVnIMgoq+Rhmk649uRsSbiI
         oTRR8+N7IVeAh4W9eHqtbqKiltmgvLCE/EEH7nK8cg+6eMsKwpRZKinMrQVc41TqI7Ww
         8ZesSQcvg9dj4IkHUTFtPL1Qe5X2A2VDTM6IIWjH+bqAk4VJuurKWPnKacVX+5PPrJkm
         HQ/Q==
X-Gm-Message-State: AOAM530V2E/rP0DEZxSuF7BtW/fD6IyJTRtmvfb3TT77mGFfrud/1isI
        5e0rP1FWTYWxGpWGmW5+c85Ri2u2dc0=
X-Google-Smtp-Source: ABdhPJyWiQZ/JWz8WXT2uP9HNOM5m9NT2taQ0LBpy3soYoniqW5szlqVnDV0OTDH1uppwLvZ9tToUA==
X-Received: by 2002:a17:90a:ae16:: with SMTP id t22mr25189960pjq.65.1628676629005;
        Wed, 11 Aug 2021 03:10:29 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id o20sm31795016pgv.80.2021.08.11.03.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 03:10:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        linux-security-module <linux-security-module@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Documenting the requirement of CAP_SETFCAP to map UID 0
To:     "Serge E. Hallyn" <serge@hallyn.com>
References: <14cbab6f-19f6-a28c-05d8-453ecca62180@gmail.com>
 <20210810235838.GA4561@mail.hallyn.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9ddba7a5-8776-45d0-4b28-1e009012eee9@gmail.com>
Date:   Wed, 11 Aug 2021 12:10:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210810235838.GA4561@mail.hallyn.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Serge

On 8/11/21 1:58 AM, Serge E. Hallyn wrote:
> On Sun, Aug 08, 2021 at 11:09:30AM +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Serge,
>>
Hello Serge,


>> Your commit:
>>
>> [[
>> commit db2e718a47984b9d71ed890eb2ea36ecf150de18
>> Author: Serge E. Hallyn <serge@hallyn.com>
>> Date:   Tue Apr 20 08:43:34 2021 -0500
>>
>>     capabilities: require CAP_SETFCAP to map uid 0
>> ]]
>>
>> added a new requirement when updating a UID map a user namespace
>> with a value of '0 0 *'.
>>
>> Kir sent a patch to briefly document this change, but I think much more
>> should be written. I've attempted to do so. Could you tell me whether the
>> following text (to be added in user_namespaces(7)) is accurate please:
> 
> Sorry for the delay - this did not go into my main mailbox.
> 
> The text looks good.  Thanks!

Thanks for checking it!

Cheers,

Michael

>> [[
>>       In  order  for  a  process  to  write  to  the /proc/[pid]/uid_map
>>        (/proc/[pid]/gid_map) file, all of the following requirements must
>>        be met:
>>
>>        [...]
>>
>>        4. If  updating  /proc/[pid]/uid_map to create a mapping that maps
>>           UID 0 in the parent namespace, then one of the  following  must
>>           be true:
>>
>>           *  if  writing process is in the parent user namespace, then it
>>              must have the CAP_SETFCAP capability in that user namespace;
>>              or
>>
>>           *  if  the writing process is in the child user namespace, then
>>              the process that created the user namespace  must  have  had
>>              the CAP_SETFCAP capability when the namespace was created.
>>
>>           This rule has been in place since Linux 5.12.  It eliminates an
>>           earlier security bug whereby a UID 0  process  that  lacks  the
>>           CAP_SETFCAP capability, which is needed to create a binary with
>>           namespaced file capabilities (as described in capabilities(7)),
>>           could  nevertheless  create  such  a  binary,  by the following
>>           steps:
>>
>>           *  Create a new user namespace with the identity mapping (i.e.,
>>              UID  0 in the new user namespace maps to UID 0 in the parent
>>              namespace), so that UID 0 in both namespaces  is  equivalent
>>              to the same root user ID.
>>
>>           *  Since  the  child process has the CAP_SETFCAP capability, it
>>              could create a binary with namespaced file capabilities that
>>              would  then  be  effective in the parent user namespace (be‐
>>              cause the root user IDs are the same in the two namespaces).
>>
>>        [...]
>> ]]
>>
>> Thanks,
>>
>> Michael
>>
>> -- 
>> Michael Kerrisk
>> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
>> Linux/UNIX System Programming Training: http://man7.org/training/


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
