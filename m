Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E68E464AB08
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 00:01:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233941AbiLLXBF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 18:01:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233929AbiLLXBD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 18:01:03 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2D2D15A08
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 15:01:01 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so6624297wma.1
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 15:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1+OvDI30VYerENfBQdO8J600kPigwqgJvJ5qCk9olc=;
        b=ouOM/dfHAkXjTHWpXU4LKdC/086JrcxU0expEcSTqZLadzUAv6eye0sZONzmvPRE+Y
         BGWyJ7i5plPljkGJSor5PU8qVja1+QWs0aeUSO/c2Td4IHe27GQwbQZpOaWoZDjRxSJ/
         iqed10Vlcm1qnmKFXSDwgMVkdTPkLgt9DeFjo38XglVIdhibvLXKVG+G/VD8og3ks8Aj
         BzHT8RrjIOdTShExDJxfCvzE9pxa2Mv9MoOkZphNP8w2vkd0zgnV3NrHFAwr+WKxGv0U
         8n8WaNViB5iD0S1BF6N434peQt4MUZkRYlv5p42nBJ71HvArbtVUGXEsGd3R8d4rAo9A
         9B2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T1+OvDI30VYerENfBQdO8J600kPigwqgJvJ5qCk9olc=;
        b=jrsFmPa8LeKjeOvrOoeFqNcbDXWgnZYQA/UsLPpXIBJnt2u0fWW73Pl214QfPhKN5K
         HFvRcjuNTwum0qm0DR3leOUNYrLpYaVM7EL7/REWiAUbELchRO00jazMmVkxnnE+Ck4j
         PxppIXa0J8HVzse+bT+PJqfusmZzdLFLA/4yNJeTN5qNTSW5fQxv3ywA6hKa3PsGT3CU
         ARWJk/RMbsB66FTG9TVSIDddF17HCNQqLZeCXGnpx15KRb+ttHUeOESdeREGbrUQd8G7
         b18cdFUo4zwsjhkKqVT5GEf4I3W1dLHYJpW/0WDk8k4ic4IQy/FnUb13kAgRPcK3w7VX
         QfRQ==
X-Gm-Message-State: ANoB5pl5eGAU17WR20XyPtQLXGFB1aBwZL9fmdqkHKqtEfId1Nc84OZc
        UyzGykkvoFHzUtJhtdt9n3U1K38VGYo=
X-Google-Smtp-Source: AA0mqf556YRsgcO5W8JG9Y65lTW4wL1E6WL6PoIDvXmCHhoVFGWALZqc4kerSGbGxNElw+Zu+nTn/g==
X-Received: by 2002:a05:600c:1d9f:b0:3cf:a80d:69ab with SMTP id p31-20020a05600c1d9f00b003cfa80d69abmr13882434wms.31.1670886059784;
        Mon, 12 Dec 2022 15:00:59 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m27-20020a05600c3b1b00b003b47ff307e1sm11801099wms.31.2022.12.12.15.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 15:00:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 0/3] Rewrite strcpy(3)
Date:   Tue, 13 Dec 2022 00:00:41 +0100
Message-Id: <20221212230044.86105-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212142418.27615-1-alx@kernel.org>
References: <20221212142418.27615-1-alx@kernel.org>
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

I'm describing all string-copying functions together in a single manual
page, using consistent and clear language to help fix long-standing
misuses of those interfaces.

v2 has seen many changes, but two major are:

-  Don't deprecate functions.  A friendly explanation of why they are
   inferior is probably more appealing.

-  Use more precise syntax: mostly
   s/unterminated string/character sequence/g [Martin].


See the formatted page below.

Alejandro Colomar (3):
  strcpy.3: Rewrite page to document all string-copying functions
  stpcpy.3, stpncpy.3, strcat.3, strncat.3, strncpy.3: Transform the old
    pages into links to strcpy(3)
  stpecpy.3, stpecpyx.3, strlcat.3, strlcpy.3, strscpy.3: Add new links
    to strcpy(3)

 man3/stpcpy.3   |  115 +-----
 man3/stpecpy.3  |    1 +
 man3/stpecpyx.3 |    1 +
 man3/stpncpy.3  |  123 +-----
 man3/strcat.3   |  161 +-------
 man3/strcpy.3   | 1048 +++++++++++++++++++++++++++++++++++++++++++----
 man3/strlcat.3  |    1 +
 man3/strlcpy.3  |    1 +
 man3/strncat.3  |  172 +-------
 man3/strncpy.3  |  130 +-----
 man3/strscpy.3  |    1 +
 11 files changed, 970 insertions(+), 784 deletions(-)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/strlcat.3
 create mode 100644 man3/strlcpy.3
 create mode 100644 man3/strscpy.3


strcpy(3)                  Library Functions Manual                  strcpy(3)

NAME
       stpcpy,  strcpy,  strcat, stpecpy, stpecpyx, strlcpy, strlcat, strscpy,
       stpncpy, strncpy, ustr2stp, strncat, mempcpy - copy strings and charac‐
       ter sequences

LIBRARY
       stpcpy(3)
       strcpy(3), strcat(3)
       stpncpy(3)
       strncpy(3)
       strncat(3)
       mempcpy(3)
              Standard C library (libc, -lc)

       stpecpy(3), stpecpyx(3)
              Not provided by any library.

       strlcpy(3), strlcat(3)
              Utility functions from BSD systems (libbsd, -lbsd)

       strscpy(3)
              Not provided by any library.  It  is  a  Linux  kernel  internal
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
       // copy a string with truncation into a character sequence.
       char *stpncpy(char dst[restrict .sz], const char *restrict src,
                      size_t sz);

       // Zero a fixed‐width buffer, and
       // copy a string with truncation into a character sequence.
       char *strncpy(char dest[restrict .sz], const char *restrict src,
                      size_t sz);

       // Chain‐copy a null‐padded character sequence into a string.
       char *ustr2stp(char *restrict dst, const char src[restrict .sz],
                      size_t sz);

       // Concatenate a null‐padded character sequence into a string.
       char *strncat(char *restrict dst, const char src[restrict .sz],
                      size_t sz);

   Measured character sequences
       // Chain‐copy a measured character sequence.
       void *mempcpy(void *restrict dst, const void src[restrict .len],
                      size_t len);

   Feature Test Macro Requirements for glibc (see feature_test_macros(7)):

       stpcpy(3), stpncpy(3):
           Since glibc 2.10:
               _POSIX_C_SOURCE >= 200809L
           Before glibc 2.10:
               _GNU_SOURCE

       mempcpy(3):
           _GNU_SOURCE

DESCRIPTION
   Terms (and abbreviations)
       string (str)
              is  a sequence of zero or more non‐null characters followed by a
              null byte.

       character sequence (ustr)
              is a sequence of zero or more non‐null  characters.   A  program
              should  never  usa  a  character  sequence where a string is re‐
              quired.  However, with appropriate care, a string can be used in
              the place of a character sequence.

              null‐padded character sequence
                     Character  sequences  can  be  contained  in  fixed‐width
                     buffers, which contain padding null bytes after the char‐
                     acter  sequence,  to  fill the rest of the buffer without
                     affecting the character sequence; however, those  padding
                     null bytes are not part of the character sequence.

              measured character sequence
                     Character sequence delimited by its length.

       length (len)
              is  the  number  of non‐null characters in a string or character
              sequence.   It  is  the  return  value  of  strlen(str)  and  of
              strnlen(ustr, sz).

       size (sz)
              refers  to  the  entire buffer where the string or character se‐
              quence is contained.

       end    is the name of a pointer to  the  terminating  null  byte  of  a
              string, or a pointer to one past the last character of a charac‐
              ter  sequence.  This is the return value of functions that allow
              chaining.  It is equivalent to &str[len].

       past_end
              is the name of a pointer to one past the end of the buffer  that
              contains  a  string  or character sequence.  It is equivalent to
              &str[sz].  It is used as a sentinel value, to be able  to  trun‐
              cate  strings  or character sequences instead of overrunning the
              containing buffer.

   Copy, concatenate, and chain‐copy
       Originally, there was a distinction between  functions  that  copy  and
       those  that  concatenate.  However, newer functions that copy while al‐
       lowing chaining cover both use cases with a single API.  They are  also
       algorithmically  faster, since they don’t need to search for the end of
       the existing string.  However, their use is a bit more verbose.

       To chain copy functions, they need to return  a  pointer  to  the  end.
       That’s  a  byproduct  of  the  copy operation, so it has no performance
       costs.  Functions that return such a pointer, and thus can be  chained,
       have  names  of the form *stp*() or *memp*(), since it’s also common to
       name the pointer just p.

       Chain‐copying functions that truncate should accept a  pointer  to  one
       past  the  end  of  the  destination buffer, and have names of the form
       *stpe*().  This allows not having to recalculate the remaining size af‐
       ter each call.

   Truncate or not?
       The first thing to note is that  programmers  should  be  careful  with
       buffers,  so  they  always have the correct size, and truncation is not
       necessary.

       In most cases, truncation is not desired, and it is simpler to just  do
       the copy.  Simpler code is safer code.  Programming against programming
       mistakes  by  adding more code just adds more points where mistakes can
       be made.

       Nowadays, compilers can detect most  programmer  errors  with  features
       like  compiler  warnings,  static  analyzers,  and _FORTIFY_SOURCE (see
       ftm(7)).  Keeping the code simple helps these  overflow‐detection  fea‐
       tures be more precise.

       When  validating  user input, however, it makes sense to truncate.  Re‐
       member to check the return value of such function calls.

       Functions that truncate:

       •  stpecpy(3) is the most efficient string copy function that  performs
          truncation.  It only requires to check for truncation once after all
          chained calls.

       •  stpecpyx(3)  is  a  variant  of  stpecpy(3) that consumes the entire
          source string, to catch bugs in the program by forcing  a  segmenta‐
          tion fault (as strlcpy(3bsd) and strlcat(3bsd) do).

       •  strlcpy(3bsd)  and  strlcat(3bsd) are designed to crash if the input
          string is invalid (doesn’t contain a terminating null byte).

       •  strscpy(3)  reports  an  error  instead  of  crashing  (similar   to
          stpecpy(3)).

       •  stpncpy(3)  and  strncpy(3)  also  truncate,  but  they  don’t write
          strings, but rather null‐padded character sequences.

   Null‐padded character sequences
       For historic reasons, some standard APIs, such as utmpx(5),  use  null‐
       padded  character  sequences in fixed‐width buffers.  To interface with
       them, specialized functions need to be used.

       To copy strings into them, use stpncpy(3).

       To copy from an unterminated string within a fixed‐width buffer into  a
       string,  ignoring  any  trailing  null  bytes in the source fixed‐width
       buffer, you should use ustr2stp(3) or strncat(3).

   Measured character sequences
       The simplest character sequence copying function is mempcpy(3).  It re‐
       quires always knowing the length of your character sequences, for which
       structures can be used.  It makes the code much faster, since  you  al‐
       ways  know the length of your character sequences, and can do the mini‐
       mal copies and length measurements.  mempcpy(3)  copies  character  se‐
       quences, so you need to explicitly set the terminating null byte if you
       need a string.

       The  following code can be used to chain‐copy from a measured character
       sequence into a string:

           p = mempcpy(p, foo->str, foo->len);
           *p = '\0';

       The following code can be used to chain‐copy from a measured  character
       sequence into an unterminated string:

           p = mempcpy(p, src->str, src->len);

       In  programs  that  make  considerable  use of strings or character se‐
       quences, and need the best performance, using overlapping character se‐
       quences can make a big difference.  It allows holding subsequences of a
       larger character sequence.  while not duplicating memory nor using time
       to do a copy.

       However, this is delicate, since it requires using character sequences.
       C library APIs use strings, so programs that  use  character  sequences
       will  have  to  take care of differentiating strings from character se‐
       quences.

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

       •  ustr2stp(3)
       •  strncat(3)

       And the last one, operates on an input character sequence to create  an
       output  character  sequence.  But because it asks for the length, and a
       string is by nature composed of a character sequence of the same length
       plus a terminating null byte, a  string  is  also  accepted  as  input.
       Function:

       •  mempcpy(3)

   Functions
       stpcpy(3)
              This function copies the input string into a destination string.
              The  programmer  is  responsible  for  allocating a buffer large
              enough.  It returns a pointer suitable for chaining.

              An implementation of this function might be:

                  char *
                  stpcpy(char *restrict dst, const char *restrict src)
                  {
                      return mempcpy(dst, src, strlen(src));
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
              but it’s not ideal for that.  Truncation needs  to  be  detected
              only once after the last chained call.

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

       ustr2stp(3)
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
                  ustr2stp(char *restrict dst, const char *restrict src,
                           size_t sz)
                  {
                      char  *end;

                      end = memccpy(dst, src, '\0', sz)) ?: dst + sz;
                      *end = '\0';

                      return end;
                  }

       strncpy(3)
              This  function is identical to stpncpy(3) except for the useless
              return value.  Due to the return value, with this function  it’s
              hard to correctly check for truncation.

              stpncpy(3) is a simpler alternative to this function.

              An implementation of this function might be:

                  char *
                  strncpy(char *restrict dst, const char *restrict src,
                          size_t sz)
                  {
                      stpncpy(dst, src, sz);
                      return dst;
                  }

       strncat(3)
              Do  not  confuse this function with strncpy(3); they are not re‐
              lated at all.

              This function concatenates the  input  character  sequence  con‐
              tained  in  a null‐padded wixed‐width buffer, into a destination
              string.  The programmer is responsible for allocating  a  buffer
              large enough.  The return value is useless.

              ustr2stp(3) is a faster alternative to this function.

              An implementation of this function might be:

                  char *
                  strncat(char *restrict dst, const char *restrict src,
                          size_t sz)
                  {
                      ustr2stp(dst + strlen(dst), src, sz);
                      return dst;
                  }

       mempcpy(3)
              This  function  copies  the input character sequence, limited by
              its length, into a destination character sequence.  The program‐
              mer is responsible for allocating a buffer large enough.  It re‐
              turns a pointer suitable for chaining.

              An implementation of this function might be:

                  void *
                  mempcpy(void *restrict dst, const void *restrict src,
                          size_t len)
                  {
                      return memcpy(dst, src, len) + len;
                  }

RETURN VALUE
       The following functions return a pointer to the terminating  null  byte
       in the destination string.

       •  stpcpy(3)
       •  ustr2stp(3)

       The  following  functions return a pointer to the terminating null byte
       in the destination string, except when truncation occurs; if truncation
       occurs, they return a pointer to one past the end  of  the  destination
       buffer (past_end).

       •  stpecpy(3), stpecpyx(3)

       The  following function returns a pointer to one after the last charac‐
       ter in the destination character sequence; if truncation  occurs,  that
       pointer  is equivalent to a pointer to one past the end of the destina‐
       tion buffer.

       •  stpncpy(3)

       The following function returns a pointer to one after the last  charac‐
       ter in the destination character sequence.

       •  mempcpy(3)

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
       For  an  explanation  of  the  terms  used in this section, see attrib‐
       utes(7).
       ┌────────────────────────────────────────────┬───────────────┬─────────┐
       │Interface                                   │ Attribute     │ Value   │
       ├────────────────────────────────────────────┼───────────────┼─────────┤
       │stpcpy(), strcpy(), strcat(), stpecpy(),    │ Thread safety │ MT‐Safe │
       │stpecpyx() strlcpy(), strlcat(), strscpy(), │               │         │
       │stpncpy(), strncpy(), ustr2stp(),           │               │         │
       │strncat(), mempcpy()                        │               │         │
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
              Functions originated in OpenBSD and present in  some  Unix  sys‐
              tems.

       mempcpy(3)
              This function is a GNU extension.

       strscpy(3)
              Linux kernel internal function.

       stpecpy(3), stpecpyx(3)
       ustr2stp(3)
              Not defined by any standards nor libraries.

CAVEATS
       Don’t  mix  chain calls to truncating and non‐truncating functions.  It
       is conceptually wrong unless you know that the first  part  of  a  copy
       will  always  fit.  Anyway, the performance difference will probably be
       negligible, so it will probably be more clear if you use consistent se‐
       mantics: either truncating or non‐truncating.  Calling a non‐truncating
       function after a truncating one is necessarily wrong.

       Some of the functions described here are not provided by  any  library;
       you should write your own copy if you want to use them.  See STANDARDS.

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
                  past_end = buf + sizeof(buf);
                  end = stpncpy(buf, "Hello world!", sizeof(buf));
                  if (end == past_end)
                      goto toolong;
                  len = end - buf;
                  for (size_t i = 0; i < sizeof(buf); i++)
                      putchar(buf[i]);

       strncpy(3)
                  strncpy(buf, "Hello world!", sizeof(buf));
                  if (buf + sizeof(buf) - 1 == '\0')
                      goto toolong;
                  len = strnlen(buf, sizeof(buf));
                  for (size_t i = 0; i < sizeof(buf); i++)
                      putchar(buf[i]);

       ustr2stp(3)
                  p = buf;
                  p = ustr2stp(p, "Hello ", 6);
                  p = ustr2stp(p, "world", 42);  // Padding null bytes ignored.
                  p = ustr2stp(p, "!", 1);
                  len = p - buf;
                  puts(buf);

       strncat(3)
                  buf[0] = '\0';  // There’s no ’cpy’ function to this ’cat’.
                  strncat(buf, "Hello ", 6);
                  strncat(buf, "world", 42);  // Padding null bytes ignored.
                  strncat(buf, "!", 1);
                  len = strlen(buf);
                  puts(buf);

       mempcpy(3)
                  p = buf;
                  p = mempcpy(p, "Hello ", 6);
                  p = mempcpy(p, "world", 5);
                  p = mempcpy(p, "!", 1);
                  p = '\0';
                  len = p - buf;
                  puts(buf);

SEE ALSO
       bzero(3), memcpy(3), memccpy(3), mempcpy(3), string(3)

Linux man‐pages (unreleased)        (date)                           strcpy(3)


-- 
2.38.1

