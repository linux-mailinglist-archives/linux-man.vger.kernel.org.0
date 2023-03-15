Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86AED6BB3AE
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 13:54:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjCOMyY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 08:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233076AbjCOMyX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 08:54:23 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 255DA15173
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:54:17 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id q16so17219409wrw.2
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678884855;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zVXGALfEdcmzSwefaQEmDw5KyXU5ju4bbqDQi2OBqB4=;
        b=JoPrU//hgvJbckTSuoSwqnUnpc2ycwWRzlVUYQjaOIwhnQ1Pm86qQqBSOupLxPtsDS
         uLb9wesg1j2AWeRT2OPo/QQ2YpOLArV76z/cCs37J0OLlvUW5SmML86a9jBCwBsdzvU6
         yPWpBOY1ZdlHIcgnK29Ql12Huh5pOnTthN3i0+Q2MC6hcryBmdHwaymQOLUCvvHX9dbS
         BmnLx3jGjnu7SoPsjIXBLyAQH6/mQC0MfA6s9pc8rCk/ChNfwwrE15de6s9T0yaTk66N
         ALl6cMZydvq+NFcooO3GOXdXe2q8JxD3e5/XjBV6miCshAtZhGoRACa38mycvk1uTOJW
         KGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678884855;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zVXGALfEdcmzSwefaQEmDw5KyXU5ju4bbqDQi2OBqB4=;
        b=z/YdNFUJSfmm95z0GJB4earVFpi0rKZXFc+rC/u5fz+QmPLLK4QdRa1bCozDXyX4iH
         FucAcbKej86wJxZkS8J7IA8Z7NBWX4eWZOGjCRMSx1DQr4hiIRKXWEwwhrd7e/Am2iGu
         r0LNnNVYGoQwIkvFfVWjq90wOyJCo+UEhWYeIFkNQ8HnKthNYXjPxvSpkYYFXXi8jIjO
         1400ed5BknF3zECoMURx2q9n4GDF5pqK+y/MOjSg6dNPCUuHlo7PWTLngHLkjDpmNjzb
         uAzfmUNskXUiO25QodyH+hvm/eQlHAUsonEO8obZ1gQ9udtherXOSfDOQz+91FwJi1F1
         OHjQ==
X-Gm-Message-State: AO0yUKXalrOIeQGa+b+y2WiWV+HsslZBGtGh1eam13DV8TsdWKCTl2k9
        von1hwFocQDJNK0YUTOeYH4plshwRmY=
X-Google-Smtp-Source: AK7set9qruC9lBs7RRY1baIGdLUIA84fcv8bdam6NFZlkDxZ0grfP61OJ6e2sWh+WKkNQ7tAgbuTBA==
X-Received: by 2002:a5d:6a46:0:b0:2cf:e688:2d7c with SMTP id t6-20020a5d6a46000000b002cfe6882d7cmr1832951wrw.33.1678884855625;
        Wed, 15 Mar 2023 05:54:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z9-20020adfd0c9000000b002c6e8af1037sm4567834wrh.104.2023.03.15.05.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 05:54:15 -0700 (PDT)
Message-ID: <ac5a7960-206d-75a5-a766-5d1302634f34@gmail.com>
Date:   Wed, 15 Mar 2023 13:54:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Guillem Jover <guillem@hadrons.org>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>
In-Reply-To: <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TsAxhzwufTewkBDk0sU2Z10v"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------TsAxhzwufTewkBDk0sU2Z10v
Content-Type: multipart/mixed; boundary="------------ZBnOEBMdZWPU8Q0wWnLUrWhl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, Guillem Jover <guillem@hadrons.org>
Message-ID: <ac5a7960-206d-75a5-a766-5d1302634f34@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>
In-Reply-To: <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>

--------------ZBnOEBMdZWPU8Q0wWnLUrWhl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/15/23 13:53, Alejandro Colomar wrote:
> Hi Oskari,
>=20
> On 3/15/23 13:30, Alejandro Colomar wrote:
>> stdc89()
>> {
>>     grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-draft.t=
xt \
>>     | sort \
>>     | uniq;
>> }
>=20
> I found a bug.  I was missing '_' in identifier names.  So it didn't
> match memcpy(3), which uses size_t.  Also, I found some spurious match,=

> so added a '$' anchor after the ';'.
>=20
>=20
> stdc89()
> {
>     grep "[[:alpha:]] \**\b$1([[:alnum:]*,._ ]*);" /path/to/c89-draft.t=
xt \

I forgot to update this line.  It should have been:

    grep "[[:alpha:]] \**\b$1([[:alnum:]*,._ ]*);$" /path/to/c89-draft.tx=
t \

>     | sort \
>     | uniq;
> }
>=20
>=20
> This function finds 136 declarations in C89.  I'm not sure if that's
> all of them.  Is anyone missing any?
>=20
> Cheers,
>=20
> Alex
>=20
>=20
> $ stdc89 '[[:alpha:]][[:alnum:]]\+' | wc -l
> 136
> $ stdc89 '[[:alpha:]][[:alnum:]]\+'
>          FILE *fopen(const char *filename, const char *mode);
>          FILE *tmpfile(void);
>          char *asctime(const struct tm *timeptr);
>          char *ctime(const time_t *timer);
>          char *fgets(char *s, int n, FILE *stream);
>          char *getenv(const char *name);
>          char *gets(char *s);
>          char *setlocale(int category, const char *locale);
>          char *strcat(char *s1, const char *s2);
>          char *strchr(const char *s, int c);
>          char *strcpy(char *s1, const char *s2);
>          char *strerror(int errnum);
>          char *strncat(char *s1, const char *s2, size_t n);
>          char *strncpy(char *s1, const char *s2, size_t n);
>          char *strpbrk(const char *s1, const char *s2);
>          char *strrchr(const char *s, int c);
>          char *strstr(const char *s1, const char *s2);
>          char *strtok(char *s1, const char *s2);
>          char *tmpnam(char *s);
>          clock_t clock(void);
>          div_t div(int numer, int denom);
>          double acos(double x);
>          double asin(double x);
>          double atan(double x);
>          double atan2(double y, double x);
>          double atof(const char *nptr);
>          double ceil(double x);
>          double cos(double x);
>          double cosh(double x);
>          double difftime(time_t time1, time_t time0);
>          double exp(double x);
>          double fabs(double x);
>          double floor(double x);
>          double fmod(double x, double y);
>          double frexp(double value, int *exp);
>          double ldexp(double x, int exp);
>          double log(double x);
>          double log10(double x);
>          double modf(double value, double *iptr);
>          double pow(double x, double y);
>          double sin(double x);
>          double sinh(double x);
>          double sqrt(double x);
>          double strtod(const char *nptr, char **endptr);
>          double tan(double x);
>          double tanh(double x);
>          extern int atoi(const char *);
>          extern void *alloc();
>          int abs(int j);
>          int atoi(const char *nptr);
>          int fclose(FILE *stream);
>          int feof(FILE *stream);
>          int ferror(FILE *stream);
>          int fflush(FILE *stream);
>          int fgetc(FILE *stream);
>          int fgetpos(FILE *stream, fpos_t *pos);
>          int fprintf(FILE *stream, const char *format, ...);
>          int fputc(int c, FILE *stream);
>          int fputs(const char *s, FILE *stream);
>          int fscanf(FILE *stream, const char *format, ...);
>          int fseek(FILE *stream, long int offset, int whence);
>          int fsetpos(FILE *stream, const fpos_t *pos);
>          int getc(FILE *stream);
>          int getchar(void);
>          int isalnum(int c);
>          int isalpha(int c);
>          int iscntrl(int c);
>          int isdigit(int c);
>          int isgraph(int c);
>          int islower(int c);
>          int isprint(int c);
>          int ispunct(int c);
>          int isspace(int c);
>          int isupper(int c);
>          int isxdigit(int c);
>          int mblen(const char *s, size_t n);
>          int mbtowc(wchar_t *pwc, const char *s, size_t n);
>          int memcmp(const void *s1, const void *s2, size_t n);
>          int printf(const char *format, ...);
>          int putc(int c, FILE *stream);
>          int putchar(int c);
>          int puts(const char *s);
>          int raise(int sig);
>          int rand(void);
>          int remove(const char *filename);
>          int rename(const char *old, const char *new);
>          int scanf(const char *format, ...);
>          int setjmp(jmp_buf env);
>          int setvbuf(FILE *stream, char *buf, int mode, size_t size);
>          int sprintf(char *s, const char *format, ...);
>          int sscanf(const char *s, const char *format, ...);
>          int strcmp(const char *s1, const char *s2);
>          int strcoll(const char *s1, const char *s2);
>          int strncmp(const char *s1, const char *s2, size_t n);
>          int system(const char *string);
>          int tolower(int c);
>          int toupper(int c);
>          int ungetc(int c, FILE *stream);
>          int vfprintf(FILE *stream, const char *format, va_list arg);
>          int vprintf(const char *format, va_list arg);
>          int vsprintf(char *s, const char *format, va_list arg);
>          int wctomb(char *s, wchar_t wchar);
>          ldiv_t ldiv(long int numer, long int denom);
>          long int atol(const char *nptr);
>          long int ftell(FILE *stream);
>          long int labs(long int j);
>          long int strtol(const char *nptr, char **endptr, int base);
>          size_t mbstowcs(wchar_t *pwcs, const char *s, size_t n);
>          size_t strcspn(const char *s1, const char *s2);
>          size_t strlen(const char *s);
>          size_t strspn(const char *s1, const char *s2);
>          size_t strxfrm(char *s1, const char *s2, size_t n);
>          size_t wcstombs(char *s, const wchar_t *pwcs, size_t n);
>          struct lconv *localeconv(void);
>          struct tm *gmtime(const time_t *timer);
>          struct tm *localtime(const time_t *timer);
>          time_t mktime(struct tm *timeptr);
>          time_t time(time_t *timer);
>          void *calloc(size_t nmemb, size_t size);
>          void *malloc(size_t size);
>          void *memchr(const void *s, int c, size_t n);
>          void *memcpy(void *s1, const void *s2, size_t n);
>          void *memmove(void *s1, const void *s2, size_t n);
>          void *memset(void *s, int c, size_t n);
>          void *realloc(void *ptr, size_t size);
>          void abort(void);
>          void assert(int expression);
>          void clearerr(FILE *stream);
>          void exit(int status);
>          void f1(int, ...);
>          void free(void *ptr);
>          void longjmp(jmp_buf env, int val);
>          void perror(const char *s);
>          void rewind(FILE *stream);
>          void setbuf(FILE *stream, char *buf);
>          void srand(unsigned int seed);
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ZBnOEBMdZWPU8Q0wWnLUrWhl--

--------------TsAxhzwufTewkBDk0sU2Z10v
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQRv/YACgkQnowa+77/
2zI1yRAAi+wrd2EdxdX50g3IOBZg/HqVnsU6DAFi8eFPx3rK+Tb0OGOfAsNkC1EK
wXkfLLKRdM4+TT1JHSZLy90ZbnWmLtblsnRqYZwGRfYSA4CTkkSH4QQPsgIQC7Y2
fFGezcSlizbCvqUeflwaNc+ma8xcvsMa7ns2sp8Ci10ZcRs+O5V3s8b5N6HXj88u
zUwhKgfI8+YYksQd1jXJhb8SQuFwCd/QpZ+/3aDcXjeapS/++/s+NSYCASdb3Ryv
NmcjWD6Z6rTJhGGESIsHd4OxU+w6zNF9E/JcFsKexlIbbrBi/YAa2JsN0MQSwGz8
fXndHXlItIJHMtBOKj2f+iwDokGnw8xJHyEd/sQMAGahln3/cQJYEFQ78CUFqlmE
uZBpd+ZxifvLVcyKXKQMdQDfqenHyivsurKV2QzXZAF8/IYXT5S40u0JTNV5J4OT
Wek+A2I6CfQnP/hHWxq5UuBwn/P5ImLktGzVI+DixjoyReumGpacii6sShLk1RXe
ycJ/KybmLPiojnZ95BGaKd8wna7BYTCgqitD9GZzxtpuZhlFS1Q4dj4J3tkwXnfE
jsYiHst8GtRQErZS5N/HB15az0H1v8g0iSKnYRxkZ1aTYOKQrbmILU2cDAJnTS/+
1m5nvBgRawleeb40spatvUGJAyT914NV28Ye2e/OktvOXqxAHUk=
=KmNX
-----END PGP SIGNATURE-----

--------------TsAxhzwufTewkBDk0sU2Z10v--
