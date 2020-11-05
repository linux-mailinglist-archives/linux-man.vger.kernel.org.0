Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD0B62A7F90
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 14:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726067AbgKENUC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 08:20:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726874AbgKENSv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 08:18:51 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 575A2C0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 05:18:51 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id dk16so2525142ejb.12
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 05:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=T5DtAtBbLmRq6/qAnJPOxnFXLIkvjZo57ih+FBmTW7s=;
        b=t/cUkEqe7UUZi9fWptrm09n78DuIBvOdRDDaZLrAAzsfeKfqyyKZAj70m23DVedbEe
         S93xXUhgzViOUdTskyhOzVndWLvXnoY/aYuLTea+4pE15dt90h2SbKtRr5WNaMnNv7h6
         OeexXh5hrZMKuhAzyLEeqKecX5RNOPHb3XkPYjqAKaK0pX8NsD6pV6T5jg/J3p/OQCyl
         o+lxtGV8DPca09NKJG4wmy8/YjUH7AmtJ3LaMwbqmf13ECZUArzIIT9gx9ALZox7onFm
         zUEl4ax8CyleeKSDvGz16csu62YA5hqjrBvxgtosWbOLUP4IVGZXvj61fv8jf4bWAPIZ
         cT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=T5DtAtBbLmRq6/qAnJPOxnFXLIkvjZo57ih+FBmTW7s=;
        b=kFB6UJc00kmL8EST4r0lf3LP4azC11aOZcKXy5zdYmU7ehg4O5OPqTg8p3IjJL1Vsk
         Mzp6yQfvVTqmHU4U4Ob3/vNe1tIVPhMQ8D74evrlATeEjWHFC6ZOLueI2QoJP8DfW7Fh
         rL2RweeYCpk1kv/I5PCu45vOrUMqLCkDSUTsz2f7+3UP3K6L7OWIbn4H3coLHbFPAiGe
         BLzSDKyrAHTQD0FsP8/jh28VyyWvB+omw2PQvDtwkNUASGdKh3mWN5qHkzd4wfCPqstk
         3RllaLlpHt1BrspmoHbRdXHZzZAf+3JEksnSYTs3CiDpNxlaiWZ8PPVtBcj5SwUIiwEI
         sKsA==
X-Gm-Message-State: AOAM531pO2qDOfFWXBkUFivF2E+LNzKXOEbTZFzrdptbb1HWVybqIxpZ
        SXw01eS1TjBirY8bUgXswTg=
X-Google-Smtp-Source: ABdhPJwG/EU5TTOegd5G14RM8papnlWyK4Ty1IeXufnEj4D3zC40HJtALnUmCrXIXFRjCt33oB8OlA==
X-Received: by 2002:a17:906:e53:: with SMTP id q19mr2359144eji.254.1604582330007;
        Thu, 05 Nov 2020 05:18:50 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id h23sm673467edv.69.2020.11.05.05.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 05:18:49 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Andrew Josey <ajosey@opengroup.org>,
        Ruediger Oertel <ro@suse.de>, Petr Gajdos <PGajdos@suse.cz>,
        Jan Haloup <jchaloup@redhat.com>,
        Ingo Schwarze <schwarze@usta.de>,
        "Dr. Tobias Quathamer" <toddy@debian.org>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Felix Janda <felix.janda@posteo.de>,
        Andy Kluger <AndyKluger@gmail.com>,
        Daniel Lublin <daniel@lublin.se>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: POSIX.1-2017 manual pages for Linux
Message-ID: <0a36ce05-f3f3-afd5-7675-a5fc4b4f0c02@gmail.com>
Date:   Thu, 5 Nov 2020 14:18:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello all,

The manual pages produced by the Linux man-pages project attempt
to document deviations between Linux behavior and the POSIX.1 standard.
However, the pages are no substitute for the standard itself.

In 2004 and 2014, the IEEE and The Open Group decided to grant
permission to the Linux man-pages project to distribute parts of the
then-current version of POSIX.1 in manual page format. That decision
provided an extremely valuable resource for Linux programmers who wanted
to write applications that are portable across UNIX systems.

We are pleased to announce that, once again, the IEEE and The Open Group
have kindly granted us permission to distribute extracts from the latest
version of the POSIX.1 standard:

    IEEE Std 1003.1-2017, Standard for Information Technology--Portable
    Operating System Interface (POSIX), The Open Group Base Specifications
    Issue 7, 2018 Edition, Copyright (C) 2018 by the Institute of
    Electrical and Electronics Engineers, Inc and The Open Group.

(For those curious about the "2017" designation, this is
POSIX.1-2008 with the 2013 Technical Corrigendum 1 and the
2016 Technical Corrigendum 2 applied.)

Once again using the excellent scripts of Felix Janda, the source
files supplied by IEEE and The Open Group have been cleanly converted
to  "man" format. The result is that portions of the standard are
made available for easy reference  as (1139!) manual pages. Those
pages are divided into three sections:

    Section 0p = POSIX headers (specifications for header files)
    Section 1p = POSIX utilities (i.e., specifications shell commands)
    Section 3p = POSIX functions (specifications for functions)

Tarballs containing the pages can be found at
https://www.kernel.org/pub/linux/docs/man-pages/man-pages-posix/man-pages-posix-2017-a.tar.gz
and
https://www.kernel.org/pub/linux/docs/man-pages/man-pages-posix/man-pages-posix-2017-a.tar.xz

Please note that all pages carry the following disclaimer:

    In the event of any discrepancy between this version and the original
    IEEE and The Open Group Standard, the original IEEE and The Open
    Group Standard is the referee document. The original Standard can
    be obtained online at http://www.opengroup.org/unix/online.html .

    Any typographical or formatting errors that appear in this page are
    most likely to have been introduced during the conversion of the
    source files to man page format. To report such errors, see
    https://www.kernel.org/doc/man-pages/reporting_bugs.html .

Regarding the last paragraph, a few widespread typographical issues
that resulted during the conversion of the previous (2014) version
of the POSIX manual pages should hopefully be fixed in this release.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
