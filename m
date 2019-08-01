Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76F4C7E13D
	for <lists+linux-man@lfdr.de>; Thu,  1 Aug 2019 19:40:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731594AbfHARki (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Aug 2019 13:40:38 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36097 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731549AbfHARki (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Aug 2019 13:40:38 -0400
Received: by mail-wr1-f65.google.com with SMTP id n4so74562554wrs.3;
        Thu, 01 Aug 2019 10:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dqsewD9XuB8jD3WNS9xa1Pt/VamizzPiEZc7RJqo4As=;
        b=R5cg/0CyQgSoSyiO+pkk7LKHEGsyFUIN2elCDrFZE4LVeLkCCGIG5/WgWPjCDvW585
         1zZbQxAgHNWEs02XqAoua7hp4I2Mib05lRMW7eoCOdmWB97Fw9wXd2x95FeGDbBFnB9S
         fZsI2huU4+kqHE/DHChTrjeMK3uOsE/VNOSbrRt+rALdbkEG9IxII5kHFhq0USe0P5iU
         IWElZjSaA2V1DfhMLKPWpgFOordhA5C6o6VufkqC0gT7m2gftgn7qOE/KigqqrAxPEv9
         S1Wx1rh+lA5o6Uqf1OCv3YC9NhTrH4BKKfWx7PfzdAb+MTmvqQEHMDHFRKShq+vgR0jo
         ovew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dqsewD9XuB8jD3WNS9xa1Pt/VamizzPiEZc7RJqo4As=;
        b=Qs1PApDmmTbcA/80cy/0tTNCrd4MZlTpy9O+h8UT5rJMVMLED2Md1XtA0wA35e/PRC
         4hyBQSkS3LEMhKOx1zV5gCTXmFILhSwpDybOSIg3ZVSa+NBhvUA0lHejwyhEgyY6PrT5
         DRBVE4Disj7wStrwTME89WOqOr+jBPRJ3iGc2iC0lNCezcXHB2E0WVqbsOqqD1bQXirs
         cWJKEvzimy9LjDcbzS+Bi2h/KKTDKEvYSva0CHkRx9YDGlsg0Ww7dEWYX2ljp9bkl9ob
         oLncAXq8QAcLdX+q4ThHbWR1k2wZ/uxeaxl9GsYendKp5ueS6h0wn357DS/RncHgVgnp
         5nPw==
X-Gm-Message-State: APjAAAVBE0YwIHVbYEcS0L/vRnWXmdWlr2aFv7rFR4+fYaC6hi48L5eL
        Uik2TbM9oZKKGqj6l3f1gOr9QY3O
X-Google-Smtp-Source: APXvYqz9lfcysVZizXHNOLcZ0CEH/CqxrMgeUGeg8/5mLAZwwwYZ6hkZuGtauXcCCZW+uV1OdQYEsg==
X-Received: by 2002:a5d:618d:: with SMTP id j13mr3406192wru.195.1564681235736;
        Thu, 01 Aug 2019 10:40:35 -0700 (PDT)
Received: from [192.168.178.53] (x5f73329d.dyn.telefonica.de. [95.115.50.157])
        by smtp.gmail.com with ESMTPSA id n8sm60872061wro.89.2019.08.01.10.40.34
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 10:40:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [patch] setxattr.2: Add ERANGE to 'ERRORS' section
To:     Finn O'Leary <finnoleary@inventati.org>
References: <e7cde98960e380f638406b7ef359eb8c@inventati.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f6c66c48-c983-ff97-3a0e-98d4f664b207@gmail.com>
Date:   Thu, 1 Aug 2019 19:40:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e7cde98960e380f638406b7ef359eb8c@inventati.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Finn,

On 7/31/19 9:53 PM, Finn O'Leary wrote:
> Hi,
> 
> Both the Ext2 filesystem handler and the Ext4 filesystem handler will
> return the ERANGE error code. Ext2 will return it if the name or value 
> is
> too long to be able to be stored, Ext4 will return it if the name is too
> long. For reference, the relevant files/lines (with excerpts) are:
> 
> fs/ext2/xattr.c: lines 394 to 396 in ext2_xattr_set
>>  394         name_len = strlen(name);
>>  395         if (name_len > 255 || value_len > sb->s_blocksize)
>>  396                 return -ERANGE;
> 
> fs/ext4/xattr.c: lines 2317 to 2318 in ext4_xattr_set_handle
>> 2317         if (strlen(name) > 255)
>> 2318                 return -ERANGE;
> 
> Other filesystems also return this code:
> 
> xfs/libxfs/xfs_attr.h: lines 53 to 55
>> * The maximum size (into the kernel or returned from the kernel) of an
>> * attribute value or the buffer used for an attr_list() call.  Larger
>> * sizes will result in an ERANGE return code.
> 
> It's possible that more filesystem handlers do this, a cursory grep 
> shows
> that most of the filesystem xattr handler files mention ERANGE in some
> form. A suggested patch is below (I'm not 100% sure on the wording 
> through).

Thanks. Patch applied, and I've done some rewording.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
