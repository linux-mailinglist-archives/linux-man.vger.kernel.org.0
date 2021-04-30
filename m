Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5447F370242
	for <lists+linux-man@lfdr.de>; Fri, 30 Apr 2021 22:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235921AbhD3Uiu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Apr 2021 16:38:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231325AbhD3Uiu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Apr 2021 16:38:50 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F034C06174A
        for <linux-man@vger.kernel.org>; Fri, 30 Apr 2021 13:38:00 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so2296578wmn.2
        for <linux-man@vger.kernel.org>; Fri, 30 Apr 2021 13:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6V4o6P1HWK0SDwZwkEfXvRa3SXD8BkGRS68e7eSBUDY=;
        b=Fkd5Sw5eDHgI5oknIl6JPVykrj33dVEAhfFt5hhR2xSwjDUwUPon7iH0Cib9CJH4Gm
         0GA4fUcBgMb4VG2jJJHq0bgr0c0t5kc1u0T6zZUMsSN7PRCZg8sLBg8navuWVkx9uP6B
         mh3nWb5QSnrR20ljyZ64c8OCdENLJvU945vfCozlh2909vg2gyluv4B30nftOIzY2AD8
         1CdeIjACIQWT2Jou+oUWl4Q7UVZ3TyPwOZwDwj74+iFNi6HeHbM87JrCgV8MyoTlaydC
         fDJAfzsJ/zxb2ZcW0MPqCh/n4MuQoERKUGlJkqH/5wqHz7S+GOUNJ4ygSFf4Y8pjm66f
         2okw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6V4o6P1HWK0SDwZwkEfXvRa3SXD8BkGRS68e7eSBUDY=;
        b=j3EB6qfdYEDM4R44nsO147g3lSZ70/WFqhgGjbnTGlY8BrRWCsJ6bdi/bm/zldfrIh
         EEtvmXYTMiWsThLTfdpjgfw//3uBs8vtJOirLrnZK59ObUmfNiGESBmHVhxjRTpgqs1P
         if67wWXeHWo//EQepAnjJs0rmzefKzFe6X4mF1QmygT4LjX/OC03gTLUI12y3LgUpS7/
         IqUF0Y4lwdMpNoQZSxhZz6SQmLPiD3tijpPl3f4ls3b8tGMrrfXKn4U7olcwIYRWZJew
         vyoErGTUGB29DdlFzMKPGzDTCfu0vhmsGI3xUK6iPhhze5K/slhQjp0P24chckkHVY/l
         Ch/Q==
X-Gm-Message-State: AOAM531PNOYgNO4/Zf2flP4NkeJaIdlAl/Yf3PSSaGi5eFqM29vr3+Qk
        mDo6EpExdmCAfLDWQhNMSMSYw7NxLsIxKA==
X-Google-Smtp-Source: ABdhPJzGzou9yeQY7vPMmpyifflZ4ZjjyjG/AmZ9arx3AMSU+J/xUXDmLwEDxH0ht4TLTDQQGAahUw==
X-Received: by 2002:a7b:c219:: with SMTP id x25mr18357336wmi.73.1619815079016;
        Fri, 30 Apr 2021 13:37:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s64sm4009040wmf.2.2021.04.30.13.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 13:37:58 -0700 (PDT)
Subject: Re: [BUG 212887] [PATCH] getopt.3: Clarify behaviour
To:     "James O. D. Hunt" <jamesodhunt@gmail.com>
Cc:     bugzilla-daemon@bugzilla.kernel.org, linux-man@vger.kernel.org
References: <20210430200012.5032-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e3f358e6-d621-90a3-1a7e-ad42b7d3092a@gmail.com>
Date:   Fri, 30 Apr 2021 22:37:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210430200012.5032-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi James,

Thanks for documenting that!
Please see some comments below.

Thanks,

Alex

On 4/30/21 10:00 PM, Alejandro Colomar wrote:
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
> 
> Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
> Bugzilla: <https://bugzilla.kernel.org/show_bug.cgi?id=212887>
> ---
> 
> I'm only forwarding the patch to the list to better discuss it.
> 
>  man3/getopt.3 | 59 ++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/getopt.3 b/man3/getopt.3
> index 921e747f8..ec3a5640f 100644
> --- a/man3/getopt.3
> +++ b/man3/getopt.3
> @@ -125,7 +125,13 @@ Then \fIoptind\fP is the index in \fIargv\fP of the first
>  \fIargv\fP-element that is not an option.
>  .PP
>  .I optstring
> -is a string containing the legitimate option characters.
> +is a string containing the legitimate option characters. A legitimate
> +option character is any visible one byte
> +.BR ascii (7)
> +character (for which
> +.BR isgraph (3)
> +would return nonzero) that is not the null byte (\(aq\e0\(aq),

Is it necessary to mention the null byte ('\0') here?  It is already not
in the 'visible character' set.  I don't think isgraph(3) would return
true for it, right?

> +dash (\(aq-\(aq) or colon (\(aq:\(aq).

So the only visible characters that are invalid are '-' and ':', right?

BTW, you should escape the dash: (\(aq\-\(aq)

See:

$ man 7 man-pages | sed -n '/Generating optimal glyphs/,+19p';
   Generating optimal glyphs
       Where a real minus character is required (e.g., for numbers
       such as -1, for man page cross references such as utf-8(7),
       or  when  writing options that have a leading dash, such as
       in ls -l), use the following form in the man page source:

           \-

       This guideline applies also to code examples.

       The use of real minus signs serves the following purposes:

       *  To provide better renderings on  various  targets  other
          than  ASCII  terminals,  notably  in  PDF  and  on  Uni‐
          code/UTF-8‐capable terminals.

       *  To generate glyphs that when copied from rendered  pages
          will  produce real minus signs when pasted into a termi‐
          nal.


>  If such a
>  character is followed by a colon, the option requires an argument, so
>  .BR getopt ()
> @@ -402,6 +408,22 @@ routine that rechecks
>  .B POSIXLY_CORRECT
>  and checks for GNU extensions in
>  .IR optstring .)
> +

$ man 7 man-pages | sed -n '/Formatting conventions (general)/,/^$/p';
   Formatting conventions (general)
       Paragraphs should be separated by suitable markers (usually
       either .PP or .IP).  Do not separate paragraphs using blank
       lines, as this results in poor  rendering  in  some  output
       formats (such as PostScript and PDF).



> +Command-line arguments are parsed in strict order meaning that an option requiring
> +an argument will consume the next argument, regardless of whether that
> +argument is the correctly specified option argument or simply the next option
> +(in the scenario the user mis-specifies the command-line). For example, if

$ man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
       In the source of a manual page,  new  sentences  should  be
       started  on new lines, and long sentences should split into
       lines at clause breaks (commas, semicolons, colons, and  so
       on).   This  convention,  sometimes known as "semantic new‐
       lines", makes it easier to see the effect of patches, which
       often  operate at the level of individual sentences or sen‐
       tence clauses.



> +.IR optstring
> +is specified as "1n:"
> +and the user incorrectly specifies the command-line arguments as
> +\(aqprog\ -n\ -1\(aq, the
> +.IR \-n

Use .I instead of .IR here.

$ man 7 groff_man | sed -n '/^ *\.IR italic/,+5p';
       .IR italic‐text roman‐text ...
              Set each argument in italics and roman, alternately.

                     This is the first command of the
                     .IR prologue .

$ man 7 groff_man | sed -n '/^ *\.I \[text]/,+16p';
       .I [text]
              Set text in italics.  If the macro is given no argu‐
              ments,  the  text  of  the next input line is set in
              italics.

              Use italics for file and path names, for environment
              variables, for enumeration or preprocessor constants
              in C, for  variable  (user‐determined)  portions  of
              syntax  synopses, for the first occurrence only of a
              technical concept being  introduced,  for  names  of
              works of software (including commands and functions,
              but excluding names of operating  systems  or  their
              kernels),  and  anywhere  a  parameter requiring re‐
              placement by the user is encountered.  An  exception
              involves  variable text in a context that is already
              marked up in italics, such as  file  or  path  names
              with  variable components; in such cases, follow the


> +option will be given the
> +.BR optarg

The same as with .I.  Use .B here.  See groff_man(7).

> +value \(aq\-1\(aq, and the
> +.IR \-1
> +option will be considered to have not been specified.
> +
>  .SH EXAMPLES
>  .SS getopt()
>  The following trivial example program uses
> @@ -542,6 +564,41 @@ main(int argc, char **argv)
>      exit(EXIT_SUCCESS);
>  }
>  .EE
> +
> +.SH WARNINGS
> +Since
> +.BR getopt ()
> +allows users to provide values to the program, every care should be taken to
> +validate every option value specified by the user calling the program.
> +.BR getopt ()
> +itself provides no validation so the programmer should perform boundary value
> +checks on
> +.ft I
> +every
> +.ft

Please use:

.I every

> +argument to minimise the risk of bad input data being accepted by the program.
> +String values should be checked to ensure they are not empty (unless
> +permitted), sanitized appropriately and that internal buffers used to
> +store the string values returned in \fIoptarg\fP are large enough to hold

Please avoid embedding formatted text in normal text. Use a separate line:

.I optarg

> +pathologically long values. Numeric values should be verified to ensure they
> +are within the expected permissible range of values.
> +
> +Further, since
> +.BR getopt ()
> +can handle numeric options (such as \(aq-1\(aq or \(aq-2 foo\(aq), care should be
> +taken when writing  a program that accepts both a numeric flag option and an option
> +accepting a numeric argument. Specifically, the program should sanity check the numeric
> +\fIoptarg\fP value carefully to protect against the case where a user
> +mis-specifies the command-line which chould result in a numeric option flag
> +being specified as the \fIoptarg\fP value for the numeric option by mistake.
> +For example, if
> +.IR optstring
> +is specified as "1n:" and the \(aqn\(aq option accepts a numeric value, if the
> +command-line is specified accidentally as \(aqprog\ -n\ -1\(aq, care needs to
> +be taken to ensure the program does not try to convert the \(aq-1\(aq passed
> +to the \(aqn\(aq option into an unsigned numeric value since that would result
> +in it being set to the largest possible integer value for the type used to
> +encode it.
>  .SH SEE ALSO
>  .BR getopt (1),
>  .BR getsubopt (3)
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
