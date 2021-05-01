Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1D903708F5
	for <lists+linux-man@lfdr.de>; Sat,  1 May 2021 22:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231717AbhEAUyb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 May 2021 16:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbhEAUyb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 May 2021 16:54:31 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24AA8C06174A
        for <linux-man@vger.kernel.org>; Sat,  1 May 2021 13:53:39 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id i21-20020a05600c3555b029012eae2af5d4so3519662wmq.4
        for <linux-man@vger.kernel.org>; Sat, 01 May 2021 13:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a5Z5Lfx8TDHZhMhrmk9bWZnukIAUcMpAAihd4dxtGgE=;
        b=Mr/28qWP2+AeR562KI7wfvr5WAvjlnyRfOF+sTjfZkfIgOpfjzF2wuBC51VjF7Ppq8
         POuZ2faw9Sffe9vQoIPCG8vhMcEyniCJI+vA0p1OCHPUUcL2B4hNF8M16Md7hn73hRiy
         yxkWZ9K/5hT5jkkQtXytrcAQngwxsHyA8mMqGyU8BrfIPdEdiyuVufpyIslQheUB+YQU
         di/WbuCwlxjh88HdWVTnz6z9Re1Ymy8SnNumLGxMhdLASxbUBD6TyaEt4Gy+Rfkah/2w
         rkKJZv6gktJby0RPAZP7xpIbbOuikEmqqFqRd9G7i1E51pHgKXK2wZChGJE51HtZ2cTg
         Z6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a5Z5Lfx8TDHZhMhrmk9bWZnukIAUcMpAAihd4dxtGgE=;
        b=reQE9F6cBoYdMeNbp891b8PQdyGYB4qAaf90GVBhIuBUYNWPA4eeTh21v3BJbzmTOO
         vTU4XIVeRix4nUrUVOhHHJhpkuV+2nWlzGfOFEgjrlM51d/2YnU5OPxk6kQZ/TFOc2gD
         eIjWMhLMcVxr0h3muGU7PB4dT0bQZ/VkqQJ+q+KZYdj8wvcP6DQQFUOrSc4LOHtZhSCc
         R7uGNtMsEtbJfTU2nI8Avx4qxjW6xLhk05yoqyNCTcsjS+HjAOg+/VZjX47N6Ku7PgzP
         2rdabOwh2C1APFJvkODTWmCrw6OAeijZ+QxKS84iLZXzLtRohJAdcACklkxZCBvnT3e0
         jYiA==
X-Gm-Message-State: AOAM533uCK1MjrFXAVJnp3UKh7Etr4eNTryIXdrzMjkFyWYL8mEMV1mf
        kPW/JHjGpiDjqTZvX+zPScvnqk3J25eOgA==
X-Google-Smtp-Source: ABdhPJyM+btPODaMOZVPJ5EfY/KdakCmb0+Z71KjEc+k9x3stSvoAmJ4lr8QMNHEBR2trsfRG+r6Nw==
X-Received: by 2002:a05:600c:6d4:: with SMTP id b20mr23461268wmn.99.1619902418425;
        Sat, 01 May 2021 13:53:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m184sm6438372wme.40.2021.05.01.13.53.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 13:53:37 -0700 (PDT)
Subject: Re: [BUG 212887] [PATCH v2] getopt.3: Clarify behaviour
To:     "James O. D. Hunt" <jamesodhunt@gmail.com>
Cc:     linux-man@vger.kernel.org, bugzilla-daemon@bugzilla.kernel.org
References: <e3f358e6-d621-90a3-1a7e-ad42b7d3092a@gmail.com>
 <20210501194101.6783-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d4894888-4a97-cb58-fe15-5bfae6170025@gmail.com>
Date:   Sat, 1 May 2021 22:53:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210501194101.6783-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi James,

See some more comments below.

Thanks,

Alex

On 5/1/21 9:41 PM, Alejandro Colomar wrote:
> From: "James O. D. Hunt" <jamesodhunt@gmail.com>
> 
> Improved the `getopt(3)` man page in the following ways:
> 
> 1) Defined the existing term "legitimate option character".
> 2) Added an additional NOTE stressing that arguments are parsed in strict
>    order and the implications of this when numeric options are utilised.
> 3) Added a new WARNINGS section that alerts the reader to the fact they
>    should:
>    - Validate all option argument.
>    - Take care if mixing numeric options and arguments accepting numeric
>      values.

Could you please separate this into 2 patches?  1 & 2 seem to be very
related, but 3 is quite different.

> 
> Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
> Bugzilla: <https://bugzilla.kernel.org/show_bug.cgi?id=212887>
> ---
> 
> Forward patch v2 from bugzilla to linux-man@.
> 
>  man3/getopt.3 | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
> 
> diff --git a/man3/getopt.3 b/man3/getopt.3
> index 921e747f8..810298505 100644
> --- a/man3/getopt.3
> +++ b/man3/getopt.3
> @@ -126,6 +126,11 @@ Then \fIoptind\fP is the index in \fIargv\fP of the first
>  .PP
>  .I optstring
>  is a string containing the legitimate option characters.
> +A legitimate option character is any visible one byte
> +.BR ascii (7)
> +character (for which
> +.BR isgraph (3)
> +would return nonzero) that is not dash (\(aq\-\(aq) or colon (\(aq:\(aq).
>  If such a
>  character is followed by a colon, the option requires an argument, so
>  .BR getopt ()
> @@ -402,6 +407,23 @@ routine that rechecks
>  .B POSIXLY_CORRECT
>  and checks for GNU extensions in
>  .IR optstring .)
> +.PP

Some more "semantic newline" cuts (//):

> +Command-line arguments are parsed in strict order // meaning that an option
> +requiring an argument will consume the next argument, // regardless of whether
> +that argument is the correctly specified option argument // or simply the next
> +option // (in the scenario the user mis-specifies the command line).
> +For example, if
> +.IR optstring
> +is specified as "1n:"
> +and the user incorrectly specifies the command line arguments as
> +\(aqprog\ \-n\ \-1\(aq, the

Please replace the quotes by italics (.IR or .I) (and possibly
non-breaking spaces).

$ man 7 man-pages | sed -n '/Complete commands/,+11p';
       Complete commands should, if long, be written as  an  in‐
       dented  line  on  their own, with a blank line before and
       after the command, for example

           man 7 man-pages

       If the command is short, then it can be  included  inline
       in  the  text,  in italic format, for example, man 7 man‐
       pages.  In this case, it may be worth  using  nonbreaking
       spaces ("\ ") at suitable places in the command.  Command
       options should be written in italics (e.g., -l).

> +.I \-n
> +option will be given the
> +.B optarg
> +value \(aq\-1\(aq, and the

Given that in the case above -1 is a C string, double quotes would
probably be more appropriate.

> +.I \-1
> +option will be considered to have not been specified.
> +.PP
>  .SH EXAMPLES
>  .SS getopt()
>  The following trivial example program uses
> @@ -542,6 +564,45 @@ main(int argc, char **argv)
>      exit(EXIT_SUCCESS);
>  }
>  .EE
> +.PP
> +.SH WARNINGS

This should probably be a subsection in NOTES.

$ man 7 man-pages | sed -n '/^ *Where.*traditional/,/^$/p';
       Where  a  traditional heading would apply, please use it;
       this kind of consistency can make the information  easier
       to  understand.   If  you  must,  you can create your own
       headings if they make things easier to  understand  (this
       can  be especially useful for pages in Sections 4 and 5).
       However, before doing this, consider  whether  you  could
       use the traditional headings, with some subsections (.SS)
       within those sections.

> +Since
> +.BR getopt ()

Some more "semantic newline" cuts (//):

> +allows users to provide values to the program, // every care should be taken to
> +validate // every option value specified by the user calling the program.
> +.BR getopt ()
> +itself provides no validation so // the programmer should perform boundary value
> +checks on
> +.I every
> +argument to minimise the risk of bad input data being accepted by the program.
> +String values should be checked to // ensure they are not empty (unless
> +permitted), // sanitized appropriately and // that internal buffers used to store

Review wording (s/that internal/check that internal/?)

> +the string values returned in
> +.I optarg
> +are large enough to hold pathologically long values.

I'm not sure if this is extending these notes too much.  I see it
obvious that any user input, especially strings, should be checked for
every corner case in paranoid mode.  But I checked scanf(3) and didn't
see any NOTES about that.

> +Numeric values should be verified to ensure they are within the expected
> +permissible range of values.
> +.PP
> +Further, since
> +.BR getopt ()
> +can handle numeric options (such as \(aq\-1\(aq or \(aq\-2\ foo\(aq), care should
> +be taken when writing  a program that accepts both a numeric flag option and
> +an option accepting a numeric argument.
> +Specifically, the program should sanity check the numeric
> +.I optarg
> +value carefully to protect against the case where a user mis-specifies the
> +command line which chould result in a numeric option flag being specified as
> +the
> +.I optarg
> +value for the numeric option by mistake.
> +For example, if
> +.IR optstring
> +is specified as "1n:" and the \(aqn\(aq option accepts a numeric value, if the
> +command line is specified accidentally as \(aqprog\ \-n\ \-1\(aq, care needs to
> +be taken to ensure the program does not try to convert the \(aq\-1\(aq passed
> +to the \(aqn\(aq option into an unsigned numeric value since that would result
> +in it being set to the largest possible integer value for the type used to
> +encode it.

I don't think we should warn about this.  If the user inputs a wrong
command line, he can only expect undefined behavior.  For the program,
as long as it doesn't have any security problems, it doesn't need to
care if the user doesn't provide a valid input.  Normal checks should be
done.

>  .SH SEE ALSO
>  .BR getopt (1),
>  .BR getsubopt (3)
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
