Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D17264CDCF
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 17:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238766AbiLNQR3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 11:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238281AbiLNQR1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 11:17:27 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F42726AFA
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 08:17:24 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id f18so241824wrj.5
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 08:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iZNBS5YH+Xj5gvJLNayCRyVU3c/8Hc+onTEw5pqYUQg=;
        b=ZwYkH8U+Fnsx2IcT5WHra4dgbIVMi41W+6OLYYE4S3gg+Gkv7xzG55jhRRexsI6c7T
         ho+C0Kj647IynxfuZUeSj4jt5xiMg3FJa6Kkm3Pt6mpW0RIo1q3hzaJDxsgWEL6K3pJu
         r4d/LCFfPnAjm7J16UpQlJ4+iZt5yWe6UR8h1OfuMzgvwuP1j1n+nCvo190QAUuEeygj
         IN/V7lkDFAHcSSPmn3YzH4nMZFkwPDS1D9+FTWHN5iEb3TMxT6L6/7QjPqZP2hW4z7sy
         t68sM3IDKVtMEeJiJPHzY72QlneppjBnqt4IDPCAtEkmDmN8zQ7oMLPV/xAmjLJfs7c7
         hrAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iZNBS5YH+Xj5gvJLNayCRyVU3c/8Hc+onTEw5pqYUQg=;
        b=rcQiApVCN4a6wfzRaz/CU0+WDe+NBYmOdctZh4Yc4SHgGFIAprj0T5JwEKkwZWrC1y
         uLXYlXnp9ceLb6IH198nN75gnp1dEqQiHb65j7D1XK1WMq7Ri0wmfU3Zv555zILqTlCj
         Ysx1uG4pRAKjXbyVojq+KkqygJ3llee5vZpdEmIpAgkt/T049LSxToRuAYemTTGAv3SC
         5jjjwXMq6Cs2TmOyv7xs8BVrnIxMXO+iMEeW40Pnlm0JDDEQHeSGvgAMdliGDv4cLvKn
         oaJj0jSFE9dV+T1bk1CVN2m2DiyTBP04lNu4Q7crlPrQXXy9FG/VcZTqnS5gDPJjX6pO
         G/jw==
X-Gm-Message-State: ANoB5pm2rqDQcwqyLuNnYUBqYtnXmwo1m3FGzs+MqwELu6M2rTppbKa4
        IdD12cIsraYQGaZbjg9CS01HEjFHW+w=
X-Google-Smtp-Source: AA0mqf7FTUcPScKKx/NxtBD5ZQoxkfK3adXdYVpIUxjdojRbQyifp13T5Cuu1v7HN7fFVjhcbtQQLw==
X-Received: by 2002:adf:f091:0:b0:242:56f:7d80 with SMTP id n17-20020adff091000000b00242056f7d80mr19644791wro.57.1671034642332;
        Wed, 14 Dec 2022 08:17:22 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b9-20020adfee89000000b00242442c8ebdsm3395872wro.111.2022.12.14.08.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 08:17:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 0/1] Rewritten page for string-copying functions
Date:   Wed, 14 Dec 2022 17:17:18 +0100
Message-Id: <20221214161719.12862-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221214000341.39846-1-alx@kernel.org>
References: <20221214000341.39846-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Several improvements, including new functions (I wasn't happy with raw
mempcpy(3) and its type unsafety), and fixed an off-by-one error, and
improved descriptions.

Here goes the new version of the formatted page.

Cheers,

Alex

Alejandro Colomar (1):
  strcpy.3: Rewrite page to document all string-copying functions

 man3/strcpy.3 | 1164 +++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 1076 insertions(+), 88 deletions(-)



strcpy(3)                  Library Functions Manual                  strcpy(3)

NAME
       stpcpy,  strcpy,  strcat, stpecpy, stpecpyx, strlcpy, strlcat, strscpy,
       stpncpy, strncpy, zustr2ustp, zustr2stp, strncat, ustpcpy,  ustr2stp  -
       copy strings and character sequences

LIBRARY
       stpcpy(3)
       strcpy(3), strcat(3)
       stpncpy(3)
       strncpy(3)
       strncat(3)
              Standard C library (libc, -lc)

       stpecpy(3), stpecpyx(3)
       zustr2ustp(3), zustr2stp(3)
       ustpcpy(3), ustr2stp(3)
              Not provided by any library.

       strlcpy(3), strlcat(3)
              Utility functions from BSD systems (libbsd, -lbsd)

       strscpy(3)
              Not  provided  by  any  library.   It is a Linux kernel internal
              function.

SYNOPSIS
       #include <string.h>

   Strings
       // Chain‐copy a string.
       char *stpcpy(char *restrict dst, const char *restrict src);

       // Copy/concatenate a string.
       char *strcpy(char *restrict dst, const char *restrict src);
       char *strcat(char *restrict dst, const char *restrict src);

       // Chain‐copy a string with truncation.
       char *stpecpy(char *dst, char past_end[0], const char *restrict src);

       // Chain‐copy a string with truncation and SIGSEGV on UB.
       char *stpecpyx(char *dst, char past_end[0], const char *restrict src);

       // Copy/concatenate a string with truncation and SIGSEGV on UB.
       size_t strlcpy(char dst[restrict .sz], const char *restrict src,
                      size_t sz);
       size_t strlcat(char dst[restrict .sz], const char *restrict src,
                      size_t sz);

       // Copy a string with truncation.
       ssize_t strscpy(char dst[restrict .sz], const char src[restrict .sz],
                      size_t sz);

   Null‐padded character sequences
       // Zero a fixed‐width buffer, and
       // copy a string into a character sequence with truncation.
       char *stpncpy(char dst[restrict .sz], const char *restrict src,
                      size_t sz);

       // Zero a fixed‐width buffer, and
       // copy a string into a character sequence with truncation.
       char *strncpy(char dest[restrict .sz], const char *restrict src,
                      size_t sz);

       // Chain‐copy a null‐padded character sequence into a character sequence.
       char *zustr2ustp(char *restrict dst, const char src[restrict .sz],
                      size_t sz);

       // Chain‐copy a null‐padded character sequence into a string.
       char *zustr2stp(char *restrict dst, const char src[restrict .sz],
                      size_t sz);

       // Concatenate a null‐padded character sequence into a string.
       char *strncat(char *restrict dst, const char src[restrict .sz],
                      size_t sz);

   Measured character sequences
       // Chain‐copy a measured character sequence.
       char *ustpcpy(char *restrict dst, const char src[restrict .len],
                      size_t len);

       // Chain‐copy a measured character sequence into a string.
       char *ustr2stp(char *restrict dst, const char src[restrict .len],
                      size_t len);

   Feature Test Macro Requirements for glibc (see feature_test_macros(7)):

       stpcpy(3), stpncpy(3):
           Since glibc 2.10:
               _POSIX_C_SOURCE >= 200809L
           Before glibc 2.10:
               _GNU_SOURCE

DESCRIPTION
   Terms (and abbreviations)
       string (str)
              is a sequence of zero or more non‐null characters followed by  a
              null byte.

       character sequence
              is  a  sequence  of zero or more non‐null characters.  A program
              should never usa a character sequence  where  a  string  is  re‐
              quired.  However, with appropriate care, a string can be used in
              the place of a character sequence.

              null‐padded character sequence (zustr)
                     Character  sequences  can  be  contained  in  fixed‐width
                     buffers, which contain padding null bytes after the char‐
                     acter sequence, to fill the rest of  the  buffer  without
                     affecting  the character sequence; however, those padding
                     null bytes are not part of the character sequence.

              measured character sequence (ustr)
                     Character sequence delimited by its length.  It may be  a
                     slice  of  a  larger  character  sequence,  or  even of a
                     string.

       length (len)
              is the number of non‐null characters in a  string  or  character
              sequence.   It  is  the  return  value  of  strlen(str)  and  of
              strnlen(ustr, sz).

       size (sz)
              refers to the entire buffer where the string  or  character  se‐
              quence is contained.

       end    is  the  name  of  a  pointer  to the terminating null byte of a
              string, or a pointer to one past the last character of a charac‐
              ter sequence.  This is the return value of functions that  allow
              chaining.  It is equivalent to &str[len].

       past_end
              is  the name of a pointer to one past the end of the buffer that
              contains a string or character sequence.  It  is  equivalent  to
              &str[sz].   It  is used as a sentinel value, to be able to trun‐
              cate strings or character sequences instead of  overrunning  the
              containing buffer.

   Copy, concatenate, and chain‐copy
       Originally,  there  was  a  distinction between functions that copy and
       those that concatenate.  However, newer functions that copy  while  al‐
       lowing  chaining cover both use cases with a single API.  They are also
       algorithmically faster, since they don’t need to search for the end  of
       the  existing  string.  However, functions that concatenate have a much
       simpler use, so if performance is not important, it can make  sense  to
       use them for improving readability.

       To  chain  copy  functions,  they  need to return a pointer to the end.
       That’s a byproduct of the copy operation,  so  it  has  no  performance
       costs.   Functions that return such a pointer, and thus can be chained,
       have names of the form *stp*(), since it’s  also  common  to  name  the
       pointer just p.

       Chain‐copying  functions  that  truncate should accept a pointer to one
       past the end of the destination buffer, and  have  names  of  the  form
       *stpe*().  This allows not having to recalculate the remaining size af‐
       ter each call.

   Truncate or not?
       The  first  thing  to  note  is that programmers should be careful with
       buffers, so they always have the correct size, and  truncation  is  not
       necessary.

       In  most cases, truncation is not desired, and it is simpler to just do
       the copy.  Simpler code is safer code.  Programming against programming
       mistakes by adding more code just adds more points where  mistakes  can
       be made.

       Nowadays,  compilers  can  detect  most programmer errors with features
       like compiler warnings,  static  analyzers,  and  _FORTIFY_SOURCE  (see
       ftm(7)).   Keeping  the code simple helps these overflow‐detection fea‐
       tures be more precise.

       When validating user input, however, it makes sense to  truncate.   Re‐
       member to check the return value of such function calls.

       Functions that truncate:

       •  stpecpy(3)  is the most efficient string copy function that performs
          truncation.  It only requires to check for truncation once after all
          chained calls.

       •  stpecpyx(3) is a variant of  stpecpy(3)  that  consumes  the  entire
          source  string,  to catch bugs in the program by forcing a segmenta‐
          tion fault (as strlcpy(3bsd) and strlcat(3bsd) do).

       •  strlcpy(3bsd) and strlcat(3bsd) are designed to crash if  the  input
          string is invalid (doesn’t contain a terminating null byte).

       •  strscpy(3)   reports  an  error  instead  of  crashing  (similar  to
          stpecpy(3)).

       •  stpncpy(3) and  strncpy(3)  also  truncate,  but  they  don’t  write
          strings, but rather null‐padded character sequences.

   Null‐padded character sequences
       For  historic  reasons, some standard APIs, such as utmpx(5), use null‐
       padded character sequences in fixed‐width buffers.  To  interface  with
       them, specialized functions need to be used.

       To copy strings into them, use stpncpy(3).

       To  copy from an unterminated string within a fixed‐width buffer into a
       string, ignoring any trailing null  bytes  in  the  source  fixed‐width
       buffer, you should use zustr2stp(3) or strncat(3).

       To  copy from an unterminated string within a fixed‐width buffer into a
       character sequence, ingoring any trailing  null  bytes  in  the  source
       fixed‐width buffer, you should use zustr2ustp(3).

   Measured character sequences
       The simplest character sequence copying function is mempcpy(3).  It re‐
       quires always knowing the length of your character sequences, for which
       structures  can  be used.  It makes the code much faster, since you al‐
       ways know the length of your character sequences, and can do the  mini‐
       mal  copies  and  length measurements.  mempcpy(3) copies character se‐
       quences, so you need to explicitly set the terminating null byte if you
       need a string.

       However, for keeping type safety, it’s good to add a wrapper that  uses
       char * instead of void *: ustpcpy(3).

       In  programs  that  make  considerable  use of strings or character se‐
       quences, and need the best performance, using overlapping character se‐
       quences can make a big difference.  It allows holding subsequences of a
       larger character sequence.  while not duplicating memory nor using time
       to do a copy.

       However, this is delicate, since it requires using character sequences.
       C library APIs use strings, so programs that  use  character  sequences
       will  have  to  take care of differentiating strings from character se‐
       quences.

       To copy a measured character sequence, use ustpcpy(3).

       To copy a measured character sequence into a string, use ustr2stp(3).

       Because these functions ask for the length, and a string is  by  nature
       composed  of a character sequence of the same length plus a terminating
       null byte, a string is also accepted as input.

   String vs character sequence
       Some functions only operate on strings.  Those require that  the  input
       src  is  a string, and guarantee an output string (even when truncation
       occurs).  Functions that concatenate also  require  that  dst  holds  a
       string before the call.  List of functions:

       •  stpcpy(3)
       •  strcpy(3), strcat(3)
       •  stpecpy(3), stpecpyx(3)
       •  strlcpy(3bsd), strlcat(3bsd)
       •  strscpy(3)

       Other  functions  require  an  input string, but create a character se‐
       quence as output.  These functions have confusing  names,  and  have  a
       long history of misuse.  List of functions:

       •  stpncpy(3)
       •  strncpy(3)

       Other  functions  operate on an input character sequence, and create an
       output string.  Functions that concatenate also require that dst  holds
       a  string before the call.  strncat(3) has an even more misleading name
       than the functions above.  List of functions:

       •  zustr2stp(3)
       •  strncat(3)
       •  ustr2stp(3)

       Other functions operate on an input character  sequence  to  create  an
       output character sequence.  List of functions:

       •  ustpcpy(3)

       •  zustr2stp(3)

   Functions
       stpcpy(3)
              This function copies the input string into a destination string.
              The  programmer  is  responsible  for  allocating a buffer large
              enough.  It returns a pointer suitable for chaining.

              An implementation of this function might be:

                  char *
                  stpcpy(char *restrict dst, const char *restrict src)
                  {
                      char  *end;

                      end = mempcpy(dst, src, strlen(src));
                      *end = '\0';

                      return end;
                  }

       strcpy(3)
       strcat(3)
              These functions copy the input string into a destination string.
              The programmer is responsible  for  allocating  a  buffer  large
              enough.  The return value is useless.

              stpcpy(3) is a faster alternative to these functions.

              An implementation of these functions might be:

                  char *
                  strcpy(char *restrict dst, const char *restrict src)
                  {
                      stpcpy(dst, src);
                      return dst;
                  }

                  char *
                  strcat(char *restrict dst, const char *restrict src)
                  {
                      stpcpy(dst + strlen(dst), src);
                      return dst;
                  }

       stpecpy(3)
       stpecpyx(3)
              These functions copy the input string into a destination string.
              If  the destination buffer, limited by a pointer to one past the
              end of it, isn’t large enough to hold the  copy,  the  resulting
              string  is  truncated  (but  it  is guaranteed to be null‐termi‐
              nated).  They return a pointer suitable for  chaining.   Trunca‐
              tion needs to be detected only once after the last chained call.
              stpecpyx(3)  has  identical semantics to stpecpy(3), except that
              it forces a SIGSEGV if the src pointer is not a string.

              These functions are not provided by any library, but you can de‐
              fine them with the following reference implementations:

                  /* This code is in the public domain. */
                  char *
                  stpecpy(char *dst, char past_end[0],
                          const char *restrict src)
                  {
                      char *p;

                      if (dst == past_end)
                          return past_end;

                      p = memccpy(dst, src, '\0', past_end - dst);
                      if (p != NULL)
                          return p - 1;

                      /* truncation detected */
                      past_end[-1] = '\0';
                      return past_end;
                  }

                  /* This code is in the public domain. */
                  char *
                  stpecpyx(char *dst, char past_end[0],
                           const char *restrict src)
                  {
                      if (src[strlen(src)] != '\0')
                          raise(SIGSEGV);

                      return stpecpy(dst, past_end, src);
                  }

       strlcpy(3bsd)
       strlcat(3bsd)
              These functions copy the input string into a destination string.
              If the destination buffer, limited  by  its  size,  isn’t  large
              enough  to hold the copy, the resulting string is truncated (but
              it is guaranteed to be null‐terminated).  They return the length
              of the total string they tried to create.  These functions force
              a SIGSEGV if the src pointer is not a string.

              stpecpyx(3) is a faster alternative to these functions.

       strscpy(3)
              This function copies the input string into a destination string.
              If the destination buffer, limited  by  its  size,  isn’t  large
              enough  to hold the copy, the resulting string is truncated (but
              it is guaranteed to be null‐terminated).  It returns the  length
              of the destination string, or -E2BIG on truncation.

              stpecpy(3) is a simpler and faster alternative to this function.

       stpncpy(3)
              This  function  copies the input string into a destination null‐
              padded character sequence in a fixed‐width buffer.  If the  des‐
              tination buffer, limited by its size, isn’t large enough to hold
              the  copy, the resulting character sequence is truncated.  Since
              it creates a character sequence, it doesn’t need to write a ter‐
              minating null byte.  It returns a pointer suitable for chaining,
              but it’s not ideal for that.   It’s  impossible  to  distinguish
              truncation  after  the call, from a character sequence that just
              fits the destination buffer; truncation should be detected  from
              the length of the original string.

              If  you’re going to use this function in chained calls, it would
              be useful to develop a similar function that accepts  a  pointer
              to one past the end of the buffer instead of a size.

              An implementation of this function might be:

                  char *
                  stpncpy(char *restrict dst, const char *restrict src,
                          size_t sz)
                  {
                      char  *p;

                      bzero(dst, sz);
                      p = memccpy(dst, src, '\0', sz);
                      if (p == NULL)
                          return dst + sz;

                      return p - 1;
                  }

       strncpy(3)
              This  function is identical to stpncpy(3) except for the useless
              return value.

              stpncpy(3) is a simpler alternative to this function.

              An implementation of this function might be:

                  char *
                  strncpy(char *restrict dst, const char *restrict src,
                          size_t sz)
                  {
                      stpncpy(dst, src, sz);
                      return dst;
                  }

       zustr2ustp(3)
              This function copies the input character sequence contained in a
              null‐padded wixed‐width buffer, into a destination character se‐
              quence.  The programmer is responsible for allocating  a  buffer
              large enough.  It returns a pointer suitable for chaining.

              A  truncating  version of this function doesn’t exist, since the
              size of the original character sequence is always known,  so  it
              wouldn’t be very useful.

              This function is not provided by any library, but you can define
              it with the following reference implementation:

                  /* This code is in the public domain. */
                  char *
                  zustr2ustp(char *restrict dst, const char *restrict src,
                             size_t sz)
                  {
                      return ustpcpy(dst, src, strnlen(src, sz));
                  }

       zustr2stp(3)
              This function copies the input character sequence contained in a
              null‐padded  wixed‐width buffer, into a destination string.  The
              programmer is responsible for allocating a buffer large  enough.
              It returns a pointer suitable for chaining.

              A  truncating  version of this function doesn’t exist, since the
              size of the original character sequence is always known,  so  it
              wouldn’t be very useful.

              This function is not provided by any library, but you can define
              it with the following reference implementation:

                  /* This code is in the public domain. */
                  char *
                  zustr2stp(char *restrict dst, const char *restrict src,
                            size_t sz)
                  {
                      char  *end;

                      end = zustr2ustp(dst, src, sz);
                      *end = '\0';

                      return end;
                  }

       strncat(3)
              Do  not  confuse this function with strncpy(3); they are not re‐
              lated at all.

              This function concatenates the  input  character  sequence  con‐
              tained  in  a null‐padded wixed‐width buffer, into a destination
              string.  The programmer is responsible for allocating  a  buffer
              large enough.  The return value is useless.

              zustr2stp(3) is a faster alternative to this function.

              An implementation of this function might be:

                  char *
                  strncat(char *restrict dst, const char *restrict src,
                          size_t sz)
                  {
                      zustr2stp(dst + strlen(dst), src, sz);
                      return dst;
                  }

       ustpcpy(3)
              This  function  copies  the input character sequence, limited by
              its length, into a destination character sequence.  The program‐
              mer is responsible for allocating a buffer large enough.  It re‐
              turns a pointer suitable for chaining.

              An implementation of this function might be:

                  /* This code is in the public domain. */
                  char *
                  ustpcpy(char *restrict dst, const char *restrict src,
                          size_t len)
                  {
                      return mempcpy(dst, src, len);
                  }

       ustr2stp(3)
              This function copies the input character  sequence,  limited  by
              its  length,  into  a destination string.  The programmer is re‐
              sponsible for allocating a buffer large enough.   It  returns  a
              pointer suitable for chaining.

              An implementation of this function might be:

                  /* This code is in the public domain. */
                  char *
                  ustr2stp(char *restrict dst, const char *restrict src,
                          size_t len)
                  {
                      char  *end;

                      end = ustpcpy(dst, src, len);
                      *end = '\0';

                      return end;
                  }

RETURN VALUE
       The  following  functions return a pointer to the terminating null byte
       in the destination string.

       •  stpcpy(3)
       •  ustr2stp(3)
       •  zustr2stp(3)

       The following functions return a pointer to the terminating  null  byte
       in the destination string, except when truncation occurs; if truncation
       occurs,  they  return  a pointer to one past the end of the destination
       buffer (past_end).

       •  stpecpy(3), stpecpyx(3)

       The following function returns a pointer to one after the last  charac‐
       ter  in  the destination character sequence; if truncation occurs, that
       pointer is equivalent to a pointer to one past the end of the  destina‐
       tion buffer.

       •  stpncpy(3)

       The  following function returns a pointer to one after the last charac‐
       ter in the destination character sequence.

       •  zustr2ustp(3)

       •  ustpcpy(3)

       The following functions return the length of the total string that they
       tried to create (as if truncation didn’t occur).

       •  strlcpy(3bsd), strlcat(3bsd)

       The following function returns the length of the destination string, or
       -E2BIG on truncation.

       •  strscpy(3)

       The following functions return the dst pointer, which is useless.

       •  strcpy(3), strcat(3)
       •  strncpy(3)
       •  strncat(3)

ATTRIBUTES
       For an explanation of the terms  used  in  this  section,  see  attrib‐
       utes(7).
       ┌────────────────────────────────────────────┬───────────────┬─────────┐
       │Interface                                   │ Attribute     │ Value   │
       ├────────────────────────────────────────────┼───────────────┼─────────┤
       │stpcpy(), strcpy(), strcat(), stpecpy(),    │ Thread safety │ MT‐Safe │
       │stpecpyx() strlcpy(), strlcat(), strscpy(), │               │         │
       │stpncpy(), strncpy(), zustr2ustp(),         │               │         │
       │zustr2stp(), strncat(), ustr2stp()          │               │         │
       │ustpcpy()                                   │               │         │
       └────────────────────────────────────────────┴───────────────┴─────────┘

STANDARDS
       strcpy(3), strcat(3)
       strncpy(3)
       strncat(3)
              POSIX.1‐2001, POSIX.1‐2008, C89, C99, SVr4, 4.3BSD.

       stpcpy(3)
       stpncpy(3)
              POSIX.1‐2008.

       strlcpy(3bsd), strlcat(3bsd)
              Functions  originated  in  OpenBSD and present in some Unix sys‐
              tems.

       strscpy(3)
              Linux kernel internal function.

       stpecpy(3), stpecpyx(3)
       zustr2ustp(3)
       zustr2stp(3)
       ustr2stp(3), ustpcpy(3)
              Not defined by any standards nor libraries.

CAVEATS
       Don’t mix chain calls to truncating and non‐truncating  functions.   It
       is  conceptually  wrong  unless  you know that the first part of a copy
       will always fit.  Anyway, the performance difference will  probably  be
       negligible, so it will probably be more clear if you use consistent se‐
       mantics: either truncating or non‐truncating.  Calling a non‐truncating
       function after a truncating one is necessarily wrong.

       Some  of  the functions described here are not provided by any library;
       you should write your own copy if you want to use them.  See STANDARDS.

BUGS
       All concatenation (*cat()) functions share the same  performance  prob‐
       lem:  Shlemiel  the painter ⟨https://www.joelonsoftware.com/2001/12/11/
       back-to-basics/⟩.

EXAMPLES
       The following are examples of correct use of each of these functions.

       stpcpy(3)
                  p = buf;
                  p = stpcpy(p, "Hello ");
                  p = stpcpy(p, "world");
                  p = stpcpy(p, "!");
                  len = p - buf;
                  puts(buf);

       strcpy(3)
       strcat(3)
                  strcpy(buf, "Hello ");
                  strcat(buf, "world");
                  strcat(buf, "!");
                  len = strlen(buf);
                  puts(buf);

       stpecpy(3)
       stpecpyx(3)
                  past_end = buf + sizeof(buf);
                  p = buf;
                  p = stpecpy(p, past_end, "Hello ");
                  p = stpecpy(p, past_end, "world");
                  p = stpecpy(p, past_end, "!");
                  if (p == past_end) {
                      p--;
                      goto toolong;
                  }
                  len = p - buf;
                  puts(buf);

       strlcpy(3bsd)
       strlcat(3bsd)
                  if (strlcpy(buf, "Hello ", sizeof(buf)) >= sizeof(buf))
                      goto toolong;
                  if (strlcat(buf, "world", sizeof(buf)) >= sizeof(buf))
                      goto toolong;
                  len = strlcat(buf, "!", sizeof(buf));
                  if (len >= sizeof(buf))
                      goto toolong;
                  puts(buf);

       strscpy(3)
                  len = strscpy(buf, "Hello world!", sizeof(buf));
                  if (len == -E2BIG)
                      goto toolong;
                  puts(buf);

       stpncpy(3)
                  end = stpncpy(buf, "Hello world!", sizeof(buf));
                  if (sizeof(buf) < strlen("Hello world!"))
                      goto toolong;
                  len = end - buf;
                  for (size_t i = 0; i < sizeof(buf); i++)
                      putchar(buf[i]);

       strncpy(3)
                  strncpy(buf, "Hello world!", sizeof(buf));
                  if (sizeof(buf) < strlen("Hello world!"))
                      goto toolong;
                  len = strnlen(buf, sizeof(buf));
                  for (size_t i = 0; i < sizeof(buf); i++)
                      putchar(buf[i]);

       zustr2ustp(3)
                  p = buf;
                  p = zustr2ustp(p, "Hello ", 6);
                  p = zustr2ustp(p, "world", 42); // Padding null bytes ignored.
                  p = zustr2ustp(p, "!", 1);
                  len = p - buf;
                  printf("%.*s\n", (int) len, buf);

       zustr2stp(3)
                  p = buf;
                  p = zustr2stp(p, "Hello ", 6);
                  p = zustr2stp(p, "world", 42);  // Padding null bytes ignored.
                  p = zustr2stp(p, "!", 1);
                  len = p - buf;
                  puts(buf);

       strncat(3)
                  buf[0] = '\0';  // There’s no ’cpy’ function to this ’cat’.
                  strncat(buf, "Hello ", 6);
                  strncat(buf, "world", 42);  // Padding null bytes ignored.
                  strncat(buf, "!", 1);
                  len = strlen(buf);
                  puts(buf);

       ustpcpy(3)
                  p = buf;
                  p = ustpcpy(p, "Hello ", 6);
                  p = ustpcpy(p, "world", 5);
                  p = ustpcpy(p, "!", 1);
                  len = p - buf;
                  printf("%.*s\n", (int) len, buf);

       ustr2stp(3)
                  p = buf;
                  p = ustr2stp(p, "Hello ", 6);
                  p = ustr2stp(p, "world", 5);
                  p = ustr2stp(p, "!", 1);
                  len = p - buf;
                  puts(buf);

SEE ALSO
       bzero(3), memcpy(3), memccpy(3), mempcpy(3), string(3)

Linux man‐pages (unreleased)        (date)                           strcpy(3)

-- 
2.38.1

